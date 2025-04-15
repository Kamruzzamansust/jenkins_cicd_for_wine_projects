pipeline{
    agent any 

    stages{
        stage('build'){
            steps{
                script{
                    echo 'cloning Github repo to Jenkins......................'
                    checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'github-token', url: 'https://github.com/Kamruzzamansust/jenkins_cicd_for_wine_projects.git']])
                }
            }
        }
}