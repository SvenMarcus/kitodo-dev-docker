echo "Setting maven preferences to allow insecure repositories"
echo "MAVEN_OPTS=\"-Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true -Dmaven.wagon.http.ssl.ignore.validity.dates=true\"" >> $HOME/.mavenrc
cat $HOME/.mavenrc


echo "Creating Kitodo config directories"
cd /usr/local
mkdir -p kitodo/config kitodo/debug kitodo/diagrams kitodo/import kitodo/logs
kitodo/messages kitodo/metadata kitodo/modules kitodo/plugins
kitodo/plugins/command kitodo/plugins/import kitodo/plugins/opac
kitodo/plugins/step kitodo/plugins/validation
kitodo/rulesets kitodo/scripts kitodo/temp kitodo/users kitodo/xslt 
install -m 444 $HOME/kitodo-production/Kitodo/src/main/resources/kitodo_*.xml kitodo/config/ 
install -m 444 $HOME/kitodo-production/Kitodo/src/main/resources/docket*.xsl kitodo/xslt/ 
install -m 444 $HOME/kitodo-production/Kitodo/src/main/resources/xslt/*.xsl kitodo/xslt/ 
install -m 444 $HOME/kitodo-production/Kitodo-XML-SchemaConverter/src/main/resources/xslt/pica2kitodo.xsl kitodo/xslt/ 
install -m 444 $HOME/kitodo-production/Kitodo-XML-SchemaConverter/src/main/resources/xslt/mods2kitodo.xsl kitodo/xslt/ 
install -m 444 $HOME/kitodo-production/Kitodo/rulesets/*.xml kitodo/rulesets/ 
install -m 444 $HOME/kitodo-production/Kitodo/diagrams/*.xml kitodo/diagrams/ 
install -m 554 $HOME/kitodo-production/Kitodo/scripts/*.sh kitodo/scripts/ 
chmod -w kitodo/config kitodo/import kitodo/messages kitodo/plugins kitodo/plugins/command kitodo/plugins/import kitodo/plugins/opac kitodo/plugins/step kitodo/plugins/validation kitodo/rulesets kitodo/scripts kitodo/xslt


JDBC_URL_PATTERN="s,\(jdbc:\)\(.*\)://\(.*\)/,\1${KITODO_JDBC_DRIVER_URL_COMPONENT}://${KITODO_DB_HOST}:${KITODO_DB_PORT}/,"

echo "Adjusting kitodo_config.properties"
sed -i "s,^\(elasticsearch.host\)=.*,\1=${KITODO_ES_HOST}," $HOME/kitodo-production/Kitodo/src/main/resources/kitodo_config.properties

echo "Adjusting hibernate.cfg.xml"
sed -i $JDBC_URL_PATTERN $HOME/kitodo-production/Kitodo/src/main/resources/hibernate.cfg.xml 
sed -i "s,\(<property name=\"hibernate.connection.driver_class\">\)\(.*\)\(<\/property>\),\1${KITODO_JDBC_DRIVER}\3," $HOME/kitodo-production/Kitodo/src/main/resources/hibernate.cfg.xml

echo "Adjusting flyway.properties"
sed -i $JDBC_URL_PATTERN $HOME/kitodo-production/Kitodo-DataManagement/src/main/resources/db/config/flyway.properties 

echo "Waiting for Database"
chmod +x $HOME/wait-for-it.sh
$HOME/wait-for-it.sh -t 0 -h mariadb -p 3306


echo "Setting up Database"
mysql -h mariadb -u kitodo -D kitodo --password=kitodo < $HOME/kitodo-production/Kitodo/setup/schema.sql 
mysql -h mariadb -u kitodo -D kitodo --password=kitodo < $HOME/kitodo-production/Kitodo/setup/default.sql 


echo "Creating local config directory"
cd $HOME/kitodo-production
mkdir config-local 
cp Kitodo/src/main/resources/hibernate.cfg.xml $HOME/kitodo-production/config-local/hibernate.cfg.xml 
cp Kitodo/src/main/resources/kitodo_config.properties $HOME/kitodo-production/config-local/kitodo_config.properties 
mvn clean install -DskipTests


echo "Running flyway migration"
cd Kitodo-DataManagement 
mvn flyway:baseline -Pflyway
mvn flyway:migrate -Pflyway
mysqldump -h mariadb -u kitodo --password=kitodo kitodo > kitodo-3.sql 


echo "Assigning all authorities to admin role"
mysql -h mariadb -u kitodo -D kitodo --password=kitodo -e "insert ignore into kitodo.role_x_authority (role_id,authority_id) values (1,2),(1,3),(1,4),(1,5),(1,6),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),(1,51),(1,52),(1,53),(1,54),(1,55),(1,56),(1,57),(1,58),(1,59),(1,60),(1,61),(1,62),(1,63),(1,64),(1,65),(1,66),(1,67),(1,68),(1,71),(1,72),(1,73),(1,74),(1,75),(1,76),(1,77),(1,78),(1,79),(1,80),(1,81),(1,82),(1,83),(1,84),(1,85),(1,91),(1,92),(1,93),(1,94),(1,95),(1,96),(1,97),(1,98),(1,107),(1,108),(1,109),(1,110),(1,111),(1,117),(1,118),(1,119),(1,120),(1,121),(1,122),(1,123),(1,124),(1,125),(1,126),(1,131),(1,132),(1,133),(1,134),(1,140),(1,141),(1,147),(1,148),(1,149),(1,150),(1,151),(1,157),(1,158),(1,159),(1,160),(1,161),(1,162),(1,163),(1,164),(1,165),(1,166),(1,167),(1,168),(1,169),(1,170),(1,171),(1,172),(1,173),(1,174),(1,175),(1,177),(1,178),(1,179),(1,180),(1,181),(1,182),(1,183),(1,184),(1,185),(1,186),(1,187),(1,188);"


echo "Loading premade workflow"
mysql -h mariadb -u kitodo -D kitodo --password=kitodo < $HOME/kitodo_starting_point.sql


bash $HOME/deploy.sh


"$@"