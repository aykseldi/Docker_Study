pipeline {
    agent none 
    stages {
        stage('Build') { 
            agent {
                docker {
                    image 'ubuntu:16.04' 
                }
            }
            steps {
                sh ' docker build -t hello1 .' 
                sh ' docker run -d -p 8080:8080 hello1' 
                stash(name: 'compiled-results', includes: '*.py*') 
            }
        }
    }
}
