pipeline
{
 agent any
 stages
 { 
   stage('con download')
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
  stage('continuous deplyment')
  {
   steps
   {
   sh 'scp /home/ubuntu/.jenkins/workspace/declarativepipeline/webapp/target/webapp.war ubuntu@172.31.89.173:/var/lib/tomcat8/webapps/sivam.war'
   }
  }
  stage('continuous testing')
  {
  steps
   {
    git 'https://github.com/sivachanikyamiriyala/FunctionalTesting.git'
   }
  }
  post
  {
  success
  {
  sh 'scp /home/ubuntu/.jenkins/workspace/declarativepipeline/webapp/target/webapp.war ubuntu@172.31.89.230:/var/lib/tomcat8/webapps/sivam.war'
  }
  failure
  {
     mail bcc: '', body: 'hi failed check once', cc: 'rockingsiva977@gmail.com', from: '', replyTo: '', subject: '', to: 'sivachanikyamiriyala@gmail.com'
  }
  }

 }
}
