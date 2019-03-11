pipeline
{
agent master
stages
{
  stage('continuoud download')
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
  stage('continupus deployment')
  {
   steps
   {
    sh 'scp /var/lib/jenkins/workspace/declarativepipeline/webapp/target/webapp.war ubuntu@172.31.81.167:/var/lib/tomcat8/webapps/siva1.war'
   }
  }
  stage('continuous test')
  {
   steps
   {
    git 'https://github.com/sivachanikyamiriyala/FunctionalTesting.git'
   }
  }
}
post
success
{
   input 'waiting for approval'
   sh 'scp /var/lib/jenkins/workspace/declarativepipeline/webapp/target/webapp.war ubuntu@172.31.87.59:/var/lib/tomcat8/webapps/siva2.war'
}
failure
{
  mail bcc: '', body: '''hi team
build failed''', cc: 'manager1@gmail.com,teamlead1@gmail.com', from: '', replyTo: '', subject: 'failed check once', to: 'sivachanikyamiriyala@gmail.com'
}
}
