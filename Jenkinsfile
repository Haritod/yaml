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
               sh 'docker build -t myimage .'
            }
        }
        stage('Deploy') {
            steps {
               sh 'docker run -d -p 8090:80 myimage'
            }
        }
    }
}
