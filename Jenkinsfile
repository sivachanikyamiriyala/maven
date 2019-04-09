pipeline
{
agent any
stages
 {
  stage('continuous download')
   {
    steps
     {
      git credentialsId: 'd33da85a-d377-4bdf-8ef8-b603954379af', url: 'https://github.com/sivachanikyamiriyala/maven.git'
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
      sh 'scp /var/lib/jenkins/workspace/declarativepipeline/webapp/target/webapp.war ubuntu@172.31.83.70:/var/lib/tomcat8/webapps/chanikya1.war'
     }
   }
  stage('continuous test')
   {
    steps
    { 
     git credentialsId: 'd33da85a-d377-4bdf-8ef8-b603954379af', url: 'https://github.com/sivachanikyamiriyala/FunctionalTesting.git'
    }
   } 
 }
post
{
success
{
  input message: 'waiting for approval', submitter: 'siva'
  sh 'scp /var/lib/jenkins/workspace/declarativepipeline/webapp/target/webapp.war ubuntu@172.31.82.31:/var/lib/tomcat8/webapps/chanikya2.war'
}
failure
{
 mail bcc: '', body: '', cc: '', from: '', replyTo: '', subject: '', to: 'development.team.@gmail.com'
}
}
}
