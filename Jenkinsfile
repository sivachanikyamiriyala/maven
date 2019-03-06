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

 }
}
