node('master')
{
    stage('scm checkout')
    {
     git credentialsId: 'gituhbcredentials', url: 'https://github.com/sivachanikyamiriyala/maven.git'   
    }
    stage('build the atrifact')
    {
        def mvnHome = tool name: 'maven4', type: 'maven'
        def mvnCMD = "${mvnHome}/bin/mvn"
        sh "${mvnCMD} sonar:sonar"
        sh "${mvnCMD} package" 
    }
    stage('buildd the file')
    {
        sh 'docker build -t siva927/tomcat:1 . '
    }
    stage('docker login')
    {
        withCredentials([string(credentialsId: 'dockerdocker', variable: 'dockerlogin')]) {
      sh "docker login -u siva927 -p ${dockerlogin}"
      sh 'docker push siva927/tomcat:1 '
        }
    }
    stage('docker run')
    {
        sh 'docker run --name drdr -d -p 7667:8080 siva927/tomcat:1' 
    }
   
}
