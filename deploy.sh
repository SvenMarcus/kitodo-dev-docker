echo "Building Kitodo in production mode"
mvn clean install '-P!development'

echo "Copying Kitodo modules"
mkdir -p /usr/local/kitodo/modules
cp Kitodo/modules/* /usr/local/kitodo/modules/

KITODO_NAME=$(find Kitodo/target -maxdepth 1 -type d -name kitodo-*)

echo "Copying .war to tomcat webapps"
cp "${KITODO_NAME}.war" $CATALINA_HOME/webapps/kitodo.war

echo "Copying configuration files"
rm -rf $CATALINA_HOME/webapps/kitodo/
cp -r $KITODO_NAME $CATALINA_HOME/webapps/kitodo

# catalina.sh run