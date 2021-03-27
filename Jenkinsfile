pipeline {
    agent any

    stages {
        // stage('initialize pipeline'){
        //   steps{
        //     sh 'mkdir /home/jenkins/devopsfile'
        //   }
        // }

        stage('Push Image'){
            steps{
                sh 'echo "Pushing Image to Docker Hub" '
                sh 'make docker-image'
            }
        }

        stage('Deploy'){
            steps {
                sh 'echo "Deploying" '
                sshPublisher(publishers: [sshPublisherDesc(configName: 'linuxvm', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'bash deploy.sh && rm deploy.sh', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: 'deploy.sh')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }
    }
}                    