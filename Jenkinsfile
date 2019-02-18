pipeline
{
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
stage('continuous download')
>>>>>>> e4d6e8e... script
=======
agent any
stages
>>>>>>> ec8947e... script1
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
    sh 'scp /home/ubuntu/.jenkins/workspace/declarativepipeline/webapp/target/webapp.war ubuntu@172.31.89.129:/var/lib/tomcat8/webapps/11.war'
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

>>>>>>> e4d6e8e... script
=======
  success
  {
  input message: 'waiting for approval', submitter: 'ravi'
   sh 'scp /home/ubuntu/.jenkins/workspace/declarativepipeline/webapp/target/webapp.war ubuntu@172.31.80.29:/var/lib/tomcat8/webapps/22.war'
  }
  failure
  {
  mail bcc: '', body: 'check once', cc: 'ravi@gmail.com', from: '', replyTo: '', subject: 'delivery failed', to: 'sivachanikyamiriyala@gmail.com'
  }



 }
>>>>>>> ec8947e... script1
}
