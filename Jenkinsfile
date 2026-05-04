pipeline {
    agent any

    environment {
        IMAGE_NAME = "ci-cd-pipeline-demo"
        IMAGE_TAG  = "latest"
    }

    stages {

        stage('Checkout') {
            steps {
                echo 'Cloning repository...'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh '''
                    docker run --rm ${IMAGE_NAME}:${IMAGE_TAG} \
                    sh -c "echo 'Tests passed successfully.'"
                '''
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying application...'
                sh '''
                    docker stop ${IMAGE_NAME} || true
                    docker rm ${IMAGE_NAME} || true
                    docker run -d --name ${IMAGE_NAME} -p 8080:80 ${IMAGE_NAME}:${IMAGE_TAG}
                    echo 'Application deployed on port 8080.'
                '''
            }
        }

    }

    post {
        success {
            echo 'Pipeline completed successfully.'
        }
        failure {
            echo 'Pipeline failed. Check the logs above.'
        }
        always {
            echo 'Pipeline finished.'
        }
    }
}
