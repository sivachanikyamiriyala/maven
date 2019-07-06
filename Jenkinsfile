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
      post
      {
        success
              { 
               mail bcc: '', body: 'hi all good', cc: 'manager@gmail.com', from: '', replyTo: '', subject: '', to: 'sivachanikyamiriyala@gmail.com'
              }
        failure
             {
               mail bcc: '', body: 'hi all bad', cc: 'manager@gmail.com', from: '', replyTo: '', subject: '', to: 'sivachanikyamiriyala@gmail.com'
             }
      }
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
        sh 'docker run --name drdr -d -p 8667:8080 siva927/tomcat:1' 
    }
   
}
