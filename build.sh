if [ ! -f "charm_schema.sql" ]
then
    echo "Error: not in Charm directory. Please change directory to repository root"
    exit 1
fi

charmDir=`pwd`
tomcatLibDir="/usr/share/tomcat7/lib"
webappName="charm"
tomcatWebappLocation="/var/lib/tomcat7/webapps"

cd "${charmDir}"

echo "== Compiling Java servlets"
if [ ! -d webapp/WEB-INF/classes ]
then
    echo " * Creating directory WEB-INF/classes/"
    mkdir webapp/WEB-INF/classes
fi

cd "${charmDir}/webapp/src"
javac -cp "${tomcatLibDir}/servlet-api.jar" -d "../WEB-INF/classes/" charm/*.java


echo "== Deploying webapp (requires sudo)"
cd "${charmDir}"
sudo rm -R "${tomcatWebappLocation}/${webappName}"
sudo cp -R "${charmDir}/webapp" "${tomcatWebappLocation}/${webappName}"

echo "== Restarting tomcat"
sudo service tomcat7 restart

