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
     sh 'scp /home/ubuntu/.jenkins/workspace/declarativepipeline/webapp/target/webapp.war ubuntu@172.31.16.248:/var/lib/tomcat8/webapps/krish.war'
     }
    }
    stage('continuous testing')
    {
    steps
     {
     git 'https://github.com/sivachanikyamiriyala/FunctionalTesting.git'
     sh 'java -jar /home/ubuntu/.jenkins/workspace/FunctionalTesting/testing.jar'
     }
    }
  }
  post
  {
   success
   {
     input message: 'waiting for approval', submitter: 'sivam'
       sh 'scp /home/ubuntu/.jenkins/workspace/declarativepipeline/webapp/target/webapp.war ubuntu@172.31.29.161:/var/lib/tomcat8/webapps/gun.war'
   }
   failure
   { 
     mail bcc: '', body: '', cc: 'si``', from: '', replyTo: '', subject: '', to: 'krishnakappera@gmail.com'
   }
  }
}
