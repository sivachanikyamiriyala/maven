node('master')
{
  stage('continuous download')
  {
   git https://github.com/sivachanikyamiriyala/maven.git
  }
  stgae('continuous build')
  {
   sh 'mvn package'
  }
  stage('continuous deployment')
  {
   sh 'scp /home/ubuntu/.jenkins/workspace/multibranch_ram/webapp/target/webapp.war username@ipaddress:/var/lib/tomcat8/webapps/11.war'
  }
  stage('continuoud test')
  {
    git https://github.com/sivachanikyamiriyala/FunctionalTesting.git
  }
  stage('continuous delivery')
  {

  sh 'scp /var/lib/jenkins/workspace/multibranch_ram/webapp/target/webapp.war username@ipadd:/var/lib/tomcat8/webapps/22.war'
  }

}
