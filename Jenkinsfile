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

}
