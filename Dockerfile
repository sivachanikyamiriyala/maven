FROM tomcat
COPY webapp/target/*.war /usr/local/tomcat/webapps/

