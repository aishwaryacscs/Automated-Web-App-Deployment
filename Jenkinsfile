pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo '📦 Checking out source code...'
                git branch: 'main', url: 'https://github.com/aishwaryacscs/Automated-Web-App-Deployment.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo '🐳 Building Docker image...'
                sh 'docker build -t webapp .'
            }
        }

        stage('Deploy with PowerShell') {
            steps {
                echo '🚀 Running PowerShell deployment script...'
                powershell 'powershell -ExecutionPolicy Bypass -File ./deploy.ps1'
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
