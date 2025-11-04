pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building appp...'
                sh 'npm ci'
                sh 'npm run build --configuration production'
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
            }
        }
    }
}
