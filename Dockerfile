FROM tomcat
COPY /var/lib/jenkins/workspace/pipeline/webapps/target/webapp.war /usr/local/tomcat/webapps/siva.war


