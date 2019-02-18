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
  success
  {
  input message: 'waiting for approval', submitter: 'ravi'
   sh 'scp /home/ubuntu/.jenkins/workspace/declarativepipeline/webapp/target/webapp.war ubuntu@172.31.80.29:/var/lib/tomcat8/webapps/22.war
  }
  failure
  {
  mail bcc: '', body: 'check once', cc: 'ravi@gmail.com', from: '', replyTo: '', subject: 'delivery failed', to: 'sivachanikyamiriyala@gmail.com'
  }



 }
}
