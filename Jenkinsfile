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
     input message: 'waiting for approval', submitter: 'sivam'
       sh 'scp /home/ubuntu/.jenkins/workspace/multibranchpipeline_master/webapp/target/webapp.war ubuntu@172.31.29.161:/var/lib/tomcat8/webapps/master.war'
   }
   failure
   { 
     mail bcc: '', body: '', cc: 'si``', from: '', replyTo: '', subject: '', to: 'krishnakappera@gmail.com'
   }
  }
}
