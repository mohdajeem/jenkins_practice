pipeline {
    agent any

    environment {
        IMAGE_NAME = 'myjenkinsimage'
        CONTAINER_NAME = 'mycontainer'
    }
    stages{
        stage('Clone'){
            steps{
                git branch: 'main', url : 'https://github.com/mohdajeem/jenkins_practice.git'
            }

        }
        stage('Build'){
            steps{
                script{
                    sh 'docker build -t $IMAGE_NAME .'
                }
            }

        }
        stage('Run'){
            steps{
                script{
                    sh 'docker rm -f $CONTAINER_NAME || true'
                    sh 'docker run -d --name $CONTAINER_NAME -p 8088:80 $IMAGE_NAME'
                }
            }
        }
    }
    post{
        success {
            echo "go to local host 8088"
        }
        failure{
            echo "failed"
        }
    }
}