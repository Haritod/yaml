pipeline {
    agent any

    stages {
        stage('cloning') {
            steps {
                checkout scm
            }
        }
        stage('build') {
            steps {
               sh 'docker build -t testrepoforgenz .'
            }
        }
        stage('Deploy') {
            steps {
               aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/l1g4s4j8
               sh 'docker tag testrepoforgenz:latest public.ecr.aws/l1g4s4j8/testrepoforgenz:latest'
               sh 'docker push public.ecr.aws/l1g4s4j8/testrepoforgenz:latest'
            }
        }
    }
}
