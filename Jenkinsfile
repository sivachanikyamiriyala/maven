node('master')
{
stage('continuous download')
  {
   git credentialsId: 'd33da85a-d377-4bdf-8ef8-b603954379af', url: 'https://github.com/sivachanikyamiriyala/maven.git'
  } 
stage('continuous build')
  {
   sh 'mvn package'
  }
stage('continuous deplyoment')
  {
   sh 'scp /var/lib/jenkins/workspace/development/webapp/target/webapp.war ubuntu@172.31.83.70:/var/lib/tomcat8/webapps/siva1.war'
  }
stage('continuous test')
 {
  git credentialsId: 'd33da85a-d377-4bdf-8ef8-b603954379af', url: 'https://github.com/sivachanikyamiriyala/FunctionalTesting.git'
 }
stage('continuous delivery')
 {
   input message: 'waiting for approval', submitter: 'siva'
   sh 'scp /var/lib/jenkins/workspace/development/webapp/target/webapp.war ubuntu@172.31.82.31:/var/lib/tomcat8/webapps/siva2.war'
  }
}
