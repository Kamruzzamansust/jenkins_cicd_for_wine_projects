pipeline {
    agent any 

    environment {
        VENV_DIR = 'venv'
    }

    stages {
        stage('build') {
            steps {
                script {
                    echo 'Cloning GitHub repo to Jenkins......................'
                    checkout scmGit(
                        branches: [[name: '*/main']],
                        extensions: [],
                        userRemoteConfigs: [[
                            credentialsId: 'github-token',
                            url: 'https://github.com/Kamruzzamansust/jenkins_cicd_for_wine_projects.git'
                        ]]
                    )
                }
            }
        }

        stage('Setup venv & Install Dependencies') {
            steps {
                script {
                    echo 'Creating virtual environment and installing dependencies...'
                    sh """
                        python3 -m venv ${VENV_DIR}
                        ${VENV_DIR}/bin/pip install --upgrade pip
                        ${VENV_DIR}/bin/pip install -r requirements.txt
                    """
                }
            }
        }
    }
}
