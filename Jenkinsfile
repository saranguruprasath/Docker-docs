pipeline {
    agent any
    environment{
        REPO = "ssn4878/docker-test"
    }
    stages{
        stage("Environment Check..!"){
            steps{
                bat '''
                    echo "%NODE_NAME%, %REPO%, %TAG%"
                    docker --version
                '''
            }
        }
        stage("Build Docker..!"){
            steps{
                bat '''
                    docker build -t %REPO%:%BUILD_NUMBER% .
                    docker push %REPO%:%BUILD_NUMBER%
                '''
            }
        }
    }
}