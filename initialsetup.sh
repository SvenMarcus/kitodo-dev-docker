service mysql start 
mysql -e "create database kitodo;create user 'kitodo'@'localhost' identified by 'kitodo';grant all on kitodo.* to 'kitodo'@'localhost';flush privileges;" 
mysql -u kitodo -D kitodo --password=kitodo < $HOME/kitodo-production/Kitodo/setup/schema.sql 
mysql -u kitodo -D kitodo --password=kitodo < $HOME/kitodo-production/Kitodo/setup/default.sql 


cd $HOME/kitodo-production
mkdir config-local 
cp Kitodo/src/main/resources/hibernate.cfg.xml $HOME/kitodo-production/config-local/hibernate.cfg.xml 
cp Kitodo/src/main/resources/kitodo_config.properties $HOME/kitodo-production/config-local/kitodo_config.properties 
mvn clean install -DskipTests 

cd Kitodo-DataManagement 
mvn flyway:baseline -Pflyway 
mvn flyway:migrate -Pflyway 
mysqldump -u kitodo --password=kitodo kitodo > kitodo-3.sql 


