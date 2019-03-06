node('master')
{
 stage('continuous download')
 {
  git credentialsId: 'a286b7f5-9c0b-4d24-a29a-587ac83a030c', url: 'https://github.com/sivachanikyamiriyala/maven.git'
 }
 stage('continuous compile')
 {
  sh 'cd /home/ubuntu/.jenkins/workspace/scriptedpipeline'
  sh 'mvn compile'
 }
 stage('continuous code checking')
 {
   tool name: 'sonar', type: 'hudson.plugins.sonar.SonarRunnerInstallation'
 }
 stage('continuous build')
 {
 sh 'mvn package'
 }
 stage('continuous upload to nexus')
 {
 nexusArtifactUploader artifacts: [[artifactId: 'artifact1', classifier: '', file: '/home/ubuntu/.jenkins/workspace/scriptedpipeline/webapp/target/webapp.war', type: 'war']], credentialsId: 'd6a98fb1-62c2-4d48-a641-1a2dd3b7ca2b', groupId: 'group1', nexusUrl: '18.208.177.47:8081/nexus', nexusVersion: 'nexus2', protocol: 'http', repository: 'repo1', version: '$BUILD_ID'
 }
 stage('continuous upload to s3')
 {
 s3Upload consoleLogLevel: 'INFO', dontWaitForConcurrentBuildCompletion: false, entries: [[bucket: 'decpractice', excludedFile: '', flatten: false, gzipFiles: false, keepForever: false, managedArtifacts: false, noUploadOnFailure: false, selectedRegion: 'ap-southeast-1', showDirectlyInBrowser: false, sourceFile: '**/*.war', storageClass: 'STANDARD', uploadFromSlave: false, useServerSideEncryption: false]], pluginFailureResultConstraint: 'FAILURE', profileName: 'aws', userMetadata: []
 }
 stage('continuous deployment')
 {
  sh 'scp /home/ubuntu/.jenkins/workspace/scriptedpipeline/webapp/taregt/webapp.war ubuntu@172.31.89.173:/var/lib/tomcat8/webapps/siva.war'
 }
 stage('continuou testing')
 {
 git credentialsId: 'a286b7f5-9c0b-4d24-a29a-587ac83a030c', url: 'https://github.com/sivachanikyamiriyala/FunctionalTesting.git'
 }
 stage('continuous delivery')
 {
 input message: 'waiting for approval', submitter: 'siva'
  sh 'scp /home/ubuntu/.jenkins/workspace/scriptedpipeline/webapp/taregt/webapp.war ubuntu@172.31.89.230:/var/lib/tomcat8/webapps/siva
.war'
 }
}
