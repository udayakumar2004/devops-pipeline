pipeline {
    agent any

    environment {
        DOCKER_USER = "udayakumar007"
        IMAGE = "react-app-dev"
        EC2_IP = "13.206.94.217"
    }

    stages {

        stage('Clone') {
            steps {
                git branch: 'dev', url: 'https://github.com/udayakumar2004/devops-pipeline.git'
            }
        }

        stage('Build Image') {
            steps {
                sh 'docker build -t $DOCKER_USER/$IMAGE .'
            }
        }

        stage('Push Image') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    sh 'echo $PASS | docker login -u $USER --password-stdin'
                    sh 'docker push $DOCKER_USER/$IMAGE'
                }
            }
        }

        stage('Deploy to EC2') {
            steps {
                sshagent(['ec2-key']) {
                    sh '''
                    ssh -o StrictHostKeyChecking=no ec2-user@$EC2_IP "
                    docker pull $DOCKER_USER/$IMAGE &&
                    docker rm -f react-app || true &&
                    docker run -d -p 80:80 --name react-app $DOCKER_USER/$IMAGE
                    "
                    '''
                }
            }
        }
    }
}
