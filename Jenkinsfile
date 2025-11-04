pipeline {
    agent {
      docker {
        image 'node:20-alpine'
        args '-u root:root' // optional, gives root access if needed
       }
    }

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
