FROM tomcat
COPY /var/lib/jenkins/workspace/pipeline/webapp/target/webapp.war /usr/local/tomcat/webapps/


