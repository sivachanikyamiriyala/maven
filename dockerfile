FROM tomcat
MAINTAINER SIVAM
RUN apt-get update -y
COPY /var/lib/jenkins/workspace/doker-app/webapp/target/webapp.war /usr/local/tomcat/webapps/
