pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            echo 'Building Docker image for Angular application...'
            steps {
                sh 'docker build -t angular-app:${BUILD_NUMBER} .'
            }
        }
        
        stage('Deploy') {
            steps {
                sh '''
                    docker stop angular-app || true
                    docker rm angular-app || true
                    docker run -d --name angular-app -p 80:80 angular-app:${BUILD_NUMBER}
                '''
            }
        }
    }
}