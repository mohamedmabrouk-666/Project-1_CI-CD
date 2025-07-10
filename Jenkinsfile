pipeline {
    agent any

    environment {
        ENV = "dev"
    }

    stages {
        stage('Build image') {
            steps {
                echo "🔨 Building project..."
                sh 'docker build -t flask-ci-cd .'
            }
        }

        stage('Unit Test Before Deploying') {
            steps {
                echo "🧪 Running tests..."
                sh 'docker run --rm flask-ci-cd pytest'
            }
        }

        stage('Deploy My_App') {
            steps {
                echo "🚀 Deploying container..."
                sh 'docker run -d -p 5000:5000 flask-ci-cd'
            }
        }
    }

    post {
        success {
            echo "✅ Pipeline succeeded!"
        }
        failure {
            echo "❌ Pipeline failed!"
        }
        always {
            echo "📦 Pipeline finished."
        }
    }
}

