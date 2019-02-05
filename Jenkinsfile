node('master')
 {
 stage('comtinuous download')
  { 
   git 'https://github.com/sivachanikyamiriyala/maven.git'
  }
  stage('continuous build')
   {
    sh 'mvn package'
   } 
  stage('continuous deployment')
   {
    sh 'scp /home/ubuntu/.jenkins/workspace/scriptedpipeline/webapp/target/webapp.war ubuntu@172.31.16.248:/var/lib/tomcat8/webapps/krishna.war'
   }
   stage('continuous testing')
    {
    git 'https://github.com/sivachanikyamiriyala/FunctionalTesting.git'
    sh 'cd /home/ubuntu/.jenkins/workspace/FunctionalTesting/testing.jar'
    }
    stage('continuous delivery')
     {
     input message: 'waiting for approval', submitter: 'sivam'
     sh 'scp /home/ubuntu/.jenkins/workspace/scriptedpipeline/webapp/target/webapp.war ubuntu@172.31.29.161:/var/lib/tomcat8/webapps/guntur.war'
     }
 }
