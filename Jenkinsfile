node('master')
{
stage('continuous download')
 {
  git 'https://github.com/sivachanikyamiriyala/maven.git'
 }
stage('continuous buld')
 {
 sh 'mvn package'
 }
stage('continuous deployment')
{
 sh 'scp /home/ubuntu/.jenkins/workspace/scriptedpipeline/webapp/target/webapp.war ubuntu@172.31.89.129:/var/lib/tomcat8/webapps/qaenc.war'
}
stage('continuous testing')
{
git 'https://github.com/sivachanikyamiriyala/FunctionalTesting.git'
}
stage('continuous delivery')
{
 input message: 'waiting for approval', submitter: 'ravi'
 sh 'scp /home/ubuntu/.jenkins/workspace/scriptedpipeline/webapp/target/webapp.war ubuntu@172.31.80.29:/var/lib/tomcat8/webapps/prodenv.war'
}
}
