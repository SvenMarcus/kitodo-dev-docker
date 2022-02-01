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
