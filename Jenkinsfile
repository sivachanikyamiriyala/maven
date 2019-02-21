pipeline
{
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
agent master
stages
<<<<<<< HEAD
{
  stage('continuous download')
  {
    steps
    {
    git credentialsId: 'c190c724-871e-45c8-a1a3-ab6ddcc2db7c', url: 'https://github.com/sivachanikyamiriyala/maven.git'
=======
 {
  stage('continuous download')
   {
    steps
    { 
    git 'https://github.com/sivachanikyamiriyala/maven.git'
>>>>>>> 35e560272885da331b7509c5d070f054cfc71938
    }
  }  
  stage('continuous build')
  {
   steps
   {
<<<<<<< HEAD
     sh 'mvn package'
   }
  }
  stage('continuous deployment')
  {
   steps
   {
<<<<<<< HEAD
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
=======
   steps
   {
   sh 'mvn package'
   }
   }
   stage('continuous deployment')
   {
   steps
   {
    sh 'scp /home/ubuntu/.jenkins/workspace/multibranchpipeline_master/webapp/target/webapp.war ubuntu@172.31.89.129:/var/lib/tomcat8/webapps/11.war'
   }
   }
   stage('continuous testing')
   {
   steps
   {
     git 'https://github.com/sivachanikyamiriyala/FunctionalTesting.git'
   }
>>>>>>> 35e560272885da331b7509c5d070f054cfc71938
   }
 }
 post
 {
  success
  {
  input message: 'waiting for approval', submitter: 'ravi'
   sh 'scp /home/ubuntu/.jenkins/workspace/multibranchpipeline_master/webapp/target/webapp.war ubuntu@172.31.80.29:/var/lib/tomcat8/webapps/22.war'
  }
  failure
  {
  mail bcc: '', body: 'check once', cc: 'ravi@gmail.com', from: '', replyTo: '', subject: 'delivery failed', to: 'sivachanikyamiriyala@gmail.com'
  }
<<<<<<< HEAD
=======
 stage('continuous download')
=======
stage('continuous download')
>>>>>>> e4d6e8e... script
=======
agent any
stages
>>>>>>> ec8947e... script1
=======
agent any
stages
>>>>>>> 43516bf... dd
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
=======
     sh label: '', script: 'scp /var/lib/jenkins/workspace/scriptedpipeline/webapp/target/webapp.war ubuntu@172.31.92.81:/var/lib/tomcat8/webapps/siva1.war'
>>>>>>> 7e758fb... scripted
   }
   }
   stage('continuous deployment')
   {
   steps
   {
<<<<<<< HEAD
<<<<<<< HEAD
    sh 'scp /home/ubuntu/.jenkins/workspace/multibranchpipeline_master/webapp/target/webapp.war ubuntu@172.31.89.129:/var/lib/tomcat8/webapps/11.war'
=======
    sh 'scp /home/ubuntu/.jenkins/workspace/declarativepipeline/webapp/target/webapp.war ubuntu@172.31.89.129:/var/lib/tomcat8/webapps/11.war'
>>>>>>> 43516bf... dd
=======
    sh 'scp /home/ubuntu/.jenkins/workspace/multibranchpipeline_master/webapp/target/webapp.war ubuntu@172.31.89.129:/var/lib/tomcat8/webapps/11.war'
>>>>>>> 35e5602... rr
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
<<<<<<< HEAD
<<<<<<< HEAD
 sh 'mvn package'
 }
<<<<<<< HEAD
 stage('continuous deployment')
 {
  sh 'scp /var/lib/jenkins/workspace/scriptedpipeline/webapp/target/webapp.war ubuntu@172.31.92.81:/var/lib/tomcat8/webapps/si1.war'
 }
>>>>>>> 1719fbf... siva2
=======
stage('continuous deployment')
{
 sh 'scp /home/ubuntu/.jenkins/workspace/scriptedpipeline/webapp/target/webapp.war ubuntu@172.31.89.129:/var/lib/tomcat8/webapps/qaenc.war'
}
<<<<<<< HEAD

>>>>>>> e4d6e8e... script
=======
  success
  {
  input message: 'waiting for approval', submitter: 'ravi'
   sh 'scp /home/ubuntu/.jenkins/workspace/multibranchpipeline_master/webapp/target/webapp.war ubuntu@172.31.80.29:/var/lib/tomcat8/webapps/22.war'
  }
  failure
  {
  mail bcc: '', body: 'check once', cc: 'ravi@gmail.com', from: '', replyTo: '', subject: 'delivery failed', to: 'sivachanikyamiriyala@gmail.com'
  }



 }
>>>>>>> ec8947e... script1
=======
stage('continuous testing')
{
git 'https://github.com/sivachanikyamiriyala/FunctionalTesting.git'
}
stage('continuous delivery')
{
 input message: 'waiting for approval', submitter: 'ravi'
 sh 'scp /home/ubuntu/.jenkins/workspace/scriptedpipeline/webapp/target/webapp.war ubuntu@172.31.80.29:/var/lib/tomcat8/webapps/prodenv.war'
}
>>>>>>> c57241b... script1
=======
  success
  {
  input message: 'waiting for approval', submitter: 'ravi'
   sh 'scp /home/ubuntu/.jenkins/workspace/multibranchpipeline_master/webapp/target/webapp.war ubuntu@172.31.80.29:/var/lib/tomcat8/webapps/22.war'
  }
  failure
  {
  mail bcc: '', body: 'check once', cc: 'ravi@gmail.com', from: '', replyTo: '', subject: 'delivery failed', to: 'sivachanikyamiriyala@gmail.com'
  }
=======
>>>>>>> 35e560272885da331b7509c5d070f054cfc71938



 }
<<<<<<< HEAD
>>>>>>> 43516bf... dd
}
=======
>>>>>>> 35e560272885da331b7509c5d070f054cfc71938
}
