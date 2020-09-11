pipeline {
    agent any
    environment{
        REPO = "ssn4878/docker-test"
        TAG = "jenkins-${env.BUILD_NUMBER}"
    }
    stages{
        stage("Environment Check..!"){
            steps{
                bat '''
                    echo "${NODE_NAME}, ${REPO}, ${TAG}"
                    docker --version
                '''
            }
        }
        stage("Build Docker..!"){
            steps{
                bat '''
                    docker build -t ${REPO}:${TAG} .
                    docker push ${REPO}:${TAG}
                '''
            }
        }
    }
}