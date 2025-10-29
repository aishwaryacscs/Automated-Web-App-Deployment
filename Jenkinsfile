pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/<your-username>/webapp.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t webapp .'
            }
        }

        stage('Deploy with PowerShell') {
            steps {
                powershell './deploy.ps1'
            }
        }
    }

    post {
        success {
            echo '✅ Deployment completed successfully!'
        }
        failure {
            echo '❌ Deployment failed. Please check logs.'
        }
    }
}
