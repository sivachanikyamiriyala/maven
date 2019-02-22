node('master')
{
    stage('continuous download')
    {
        git 'hhtps://github.com/sivachanikyamiriyala/maven.git'
    }
    stage('continuous compile')
    {
        sh 'cd /var/lib/jenkins/workspace/scriptedpipeline'
        sh 'mvn compile'
    }
    stage('continuous static code anyaliaser')
    {
        tool name: 'sonar', type: 'hudson.plugins.sonar.SonarRunnerInstallation'
    }
    stage('continuous build')
    {
        sh 'cd /var/lib/jenkins/workspace/scriptedpipeline'
        sh 'mvn package'
    }
    stage('continuoous upload')
    {
        nexusArtifactUploader artifacts: [[artifactId: 'dev', classifier: '', file: '/var/lib/jenkins/workspace/scriptedpipeline/webapp/target/webapp.war', type: 'war']], credentialsId: '641f6063-dae2-4ecb-80dd-894496973ff4', groupId: 'dev', nexusUrl: '3.92.214.215:8081/nexus', nexusVersion: 'nexus2', protocol: 'http', repository: 'siva', version: '$BUILD_ID'
    }
    stage('continuous upload to s3 ')
    {
        s3Upload consoleLogLevel: 'INFO', dontWaitForConcurrentBuildCompletion: false, entries: [[bucket: 'decpractice', excludedFile: '', flatten: false, gzipFiles: false, keepForever: false, managedArtifacts: false, noUploadOnFailure: false, selectedRegion: 'ap-southeast-1', showDirectlyInBrowser: false, sourceFile: '**/*.war', storageClass: 'STANDARD', uploadFromSlave: false, useServerSideEncryption: false]], pluginFailureResultConstraint: 'FAILURE', profileName: 'aws', userMetadata: []
    }
    stage('continuoud deploymnet')
    {
        sh 'sudo chmod -R 777 /var/lib/tomcat8/webapps'
        sh 'scp /var/lib/jenkins/workspace/scriptedpipeline/webapp/target/webapp.war ubuntu@172.31.93.252:/var/lib/tomcat8/webapps/11.war'
    }
    stage('continuous testing')
    {
        git 'https://github.com/sivachanikyamiriyala/FunctionalTesting.git'
        
    }
    stage('continuous delivery')
    {
        input message: 'waiting for approval', submitter: 'admin'
        sh 'sudo chmod -R 777 /var/lib/tomcat8/webapps'
        sh 'scp /var/lib/jenkins/workspace/scriptedpipeline/webapp/target/webapp.war ubuntu@172.31.85.36:/var/lib/tomcat8/webapps/22.war
    }
}
