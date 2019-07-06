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
 }
