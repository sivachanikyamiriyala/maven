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
    stage('continuous deploymnet')
    {
     steps
       {
        sh 'scp /home/ubuntu/.jenkins/workspace/declarativepipeline/webapp/target/webapp.war ubuntu@172.31.85.133:/var/lib/tomcat8/webapps/aa.war'
       }
    }
    stage('continuous testing')
    {
    steps
     {
     git 'https://github.com/sivachanikyamiriyala/FunctionalTesting.git'
     sh 'java -jar testing.jar'
     }
    }
    stage('continuous delivery')
    {
     steps
     {
     input message: 'waiting for approval', submitter: 'siva'
     sh 'scp /home/ubuntu/.jenkins/workspace/declarativepipeline/webapp/target/webapp.war ubuntu@:172.31.82.251:/var/lib/tomcat8/webapps/cc.war'
     }
    }
 }
}
