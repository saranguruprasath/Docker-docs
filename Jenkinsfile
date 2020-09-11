pipeline {
    agent any
    environment{
        REPO = "ssn4878/docker-test"
        TAG = "jenkins-${env.BUILD_NUMBER}"
    }
    stages{
        stage("Build Docker..!"){
            steps{
                docker build -t ${REPO}:${TAG}
                docker push ${REPO}:${TAG}
            }
        }
    }
}