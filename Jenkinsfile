pipeline {
    agent any
    environment{
        REPO = "ssn4878/docker-test"
        CRED = credentials('DOCKCRED')
    }
    stages{
        stage("Environment Check..!"){
            steps{
                bat '''
                    echo %NODE_NAME%, %REPO%
                    docker --version
                '''
            }
        }
        stage("Build Docker..!"){
            steps{
                bat '''
                    docker login -u %CRED_USR% -p %CRED_PSW%
                    docker build -t %REPO%:%BUILD_NUMBER% .
                    docker push %REPO%:%BUILD_NUMBER%
                    docker logout
                '''
            }
        }
    }
}