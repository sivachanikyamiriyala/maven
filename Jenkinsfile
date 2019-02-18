pipeline
{
agent master
stages
{
  stage('continuous download')
  {
    steps
    {
    git credentialsId: 'c190c724-871e-45c8-a1a3-ab6ddcc2db7c', url: 'https://github.com/sivachanikyamiriyala/maven.git'
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
     sh 'scp /var/lib/jenkins/workspace/scriptedpipeline/webapp/target/webapp.war ubuntu@172.31.92.81:/var/lib/tomcat8/webapps/siva44.war'
   }
  }
}
}
