node('master')
{
<<<<<<< HEAD
agent master
stages
  {
  stage('continuous download')
   {
   steps
    {
    git 'https://github.com/sivachanikyamiriyala/maven.git'
    }
   }
   stage('continuous build')
   {
    steps
     {
     sh 'mvn package'
     }
   }
   stage('continuous deployment')
    {
    steps
     {
     sh 'scp /home/ubuntu/.jenkins/workspace/multibranchpipeline_master/webapp/target/webapp.war ubuntu@172.31.16.248:/var/lib/tomcat8/webapps/master1.war'
     }
    }
    stage('continuous testing')
    {
    steps
     {
     git 'https://github.com/sivachanikyamiriyala/FunctionalTesting.git'
     }
    }
  }
  post
  {
   success
   {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
     input message: 'waiting for approval', submitter: 'sivam'
       sh 'scp /home/ubuntu/.jenkins/workspace/multibranchpipeline_master/webapp/target/webapp.war ubuntu@172.31.29.161:/var/lib/tomcat8/webapps/master.war'
   }
   failure
   { 
     mail bcc: '', body: '', cc: 'si``', from: '', replyTo: '', subject: '', to: 'krishnakappera@gmail.com'
=======
     sh 'scp /var/lib/jenkins/workspace/scriptedpipeline/webapp/target/webapp.war ubuntu@172.31.92.81:/var/lib/tomcat8/webapps/siva1.war'
>>>>>>> 6f55d7b... scripted1
=======
     sh label: '', script: 'sudo scp /var/lib/jenkins/workspace/scriptedpipeline/webapp/target/webapp.war ubuntu@172.31.92.81:/var/lib/tomcat8/webapps/siva1.war'
>>>>>>> 66bf2c9... siva
=======
     sh 'scp /var/lib/jenkins/workspace/scriptedpipeline/webapp/target/webapp.war ubuntu@172.31.92.81:/var/lib/tomcat8/webapps/siva44.war'
>>>>>>> 4863d9e... siva1
   }
  }
=======
 stage('continuous download')
 {
   git credentialsId: 'c190c724-871e-45c8-a1a3-ab6ddcc2db7c', url: 'https://github.com/sivachanikyamiriyala/maven.git'

 }
 stage('continuous build')
 {
 sh 'mvn package'
 }
 stage('continuous deployment')
 {
  sh 'scp /var/lib/jenkins/workspace/scriptedpipeline/webapp/target/webapp.war ubuntu@172.31.92.81:/var/lib/tomcat8/webapps/si1.war'
 }
>>>>>>> 1719fbf... siva2
}
