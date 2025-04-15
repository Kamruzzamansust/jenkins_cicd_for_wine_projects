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
         stage('Setting up our Virtual Environment and Installing Dependencies') {
            steps {
                script {
                    echo 'Setting up our Virtual Environment and Installing Dependencies......................'
                    sh """
                    python -m venv ${VENV_DIR}
                    source ${VENV_DIR}/bin/activate
                    pip install -r requirements.txt
                    
                    """

                }
            }
        }
    }
}
