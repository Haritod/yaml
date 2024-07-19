pipeline {
    agent any

    stages {
        stage('cloning') {
            steps {
                git clone https://github.com/Haritod/yaml.git
            }
        }
        stage('build') {
            steps {
                docker build -t myimage .
            }
        }
        stage('Deploy') {
            steps {
                docker run -d -p 8090:80 myimage
            }
        }
    }
}
