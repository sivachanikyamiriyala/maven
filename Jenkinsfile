node('master')
{
 stage('continuous download')
 {
  git 'https://github.com/sivachanikyamiriyala/maven.git'

 }
 stage('continuous build')
 {
  sh 'mvn package'
 }
 stage('continuous deployment')
 {
  sh 'scp /var/lib/jenkins/workspace/scriptedpipeline/webapp/target/webapp.war ubuntu@172.31.81.167:/var/lib/tomcat8/webapps/qaenv.war'
 }
 stage('continuous test')
 {
  git 'https://github.com/sivachanikyamiriyala/FunctionalTesting.git'
 }
 stage('continuous delivery')
 {
 input 'waiting for approval'
 sh 'scp /var/lib/jenkins/workspace/scriptedpipeline/webapp/target/webapp.war ubuntu@172.31.87.59:/var/lib/tomcat8/webapps/prodenv.war'
 }
}
