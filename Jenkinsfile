pipeline
{
agent any
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
   }
  }
}
