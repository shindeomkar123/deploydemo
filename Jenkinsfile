pipeline {
    agent any

    tools {
        nodejs 'nodejs' // Name of NodeJS tool configured in Jenkins
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building appp...'
                sh 'npm ci'
                sh 'npm run build --configuration production'
            }
        }
        stage('Docker Build') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t my-app-image:latest .'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                sh 'docker run -d --rm -p 80:80 --name my-app-container my-app-image:latest'
            }
        }
    }
}
