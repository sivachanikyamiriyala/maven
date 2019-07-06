node('master')
 {
   stage('scm checkout')
    { 
    git credentialsId: 'gituhbcredentials', url: 'https://github.com/sivachanikyamiriyala/maven.git'
    }

   stage('build the code') 
    { 
     def mvnHome = tool name: 'maven3', type: 'maven'
     def mvnCMD = "${mvnHome}/bin/mvn"
     sh "${mvnCMD} package" 
    }

   stage('docker build the image')
   {
    sh "docker build -t siva927/tomcat . "
   } 
   stage('docker login')
    {
       withCredentials([string(credentialsId: 'dokercredentials', variable: 'dockercredentials')]) {
        sh "docker login -u siva927 -p ${dockercredentials} "
       }
    }
    stage('pushing the image') 
     {
        sh 'docker push siva927/tomcat'
     }
 }
