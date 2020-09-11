pipeline {
    agent any
    environment {
        PROJ_NAME = "Test"
        REPO = "hub.docker.com/ssn4878/docker-test"
    }

    stages {
        stage ("Test Docker") {
            BUILD_VERSION = "Testdocker-${env.BUILD_NUMBER}"
            sh "docker build -f Dockerfile . -t ${REPO}:${PROJ_NAME}-${BUILD_VERSION}"
            sh 'docker push ${REPO}:${BUILD_VERSION}'
        }
    }
}