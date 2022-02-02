echo "Copying MariaDB configuration files"
cp $HOME/mariadb_adjustments/hibernate.cfg.xml $HOME/kitodo-production/Kitodo/src/main/resources/hibernate.cfg.xml
cp $HOME/mariadb_adjustments/flyway.properties $HOME/kitodo-production/Kitodo-DataManagement/src/main/resources/db/config/flyway.properties


echo "Setting up Database"
mysql -e "create database kitodo;create user 'kitodo'@'localhost' identified by 'kitodo';grant all on kitodo.* to 'kitodo'@'localhost';flush privileges;" 
mysql -u kitodo -D kitodo --password=kitodo < $HOME/kitodo-production/Kitodo/setup/schema.sql 
mysql -u kitodo -D kitodo --password=kitodo < $HOME/kitodo-production/Kitodo/setup/default.sql 


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
mysqldump -u kitodo --password=kitodo kitodo > kitodo-3.sql 


echo "Assigning all authorities to admin role"
mysql -u kitodo -D kitodo --password=kitodo -e "insert ignore into kitodo.role_x_authority (role_id,authority_id) values (1,2),(1,3),(1,4),(1,5),(1,6),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),(1,51),(1,52),(1,53),(1,54),(1,55),(1,56),(1,57),(1,58),(1,59),(1,60),(1,61),(1,62),(1,63),(1,64),(1,65),(1,66),(1,67),(1,68),(1,71),(1,72),(1,73),(1,74),(1,75),(1,76),(1,77),(1,78),(1,79),(1,80),(1,81),(1,82),(1,83),(1,84),(1,85),(1,91),(1,92),(1,93),(1,94),(1,95),(1,96),(1,97),(1,98),(1,107),(1,108),(1,109),(1,110),(1,111),(1,117),(1,118),(1,119),(1,120),(1,121),(1,122),(1,123),(1,124),(1,125),(1,126),(1,131),(1,132),(1,133),(1,134),(1,140),(1,141),(1,147),(1,148),(1,149),(1,150),(1,151),(1,157),(1,158),(1,159),(1,160),(1,161),(1,162),(1,163),(1,164),(1,165),(1,166),(1,167),(1,168),(1,169),(1,170),(1,171),(1,172),(1,173),(1,174),(1,175),(1,177),(1,178),(1,179),(1,180),(1,181),(1,182),(1,183),(1,184),(1,185),(1,186),(1,187),(1,188);"


echo "Loading premade workflow"
mysql -u kitodo -D kitodo --password=kitodo < $HOME/kitodo_starting_point.sql