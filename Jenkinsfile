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
                sh 'python -m py_compile helloworld.py' 
                stash(name: 'compiled-results', includes: '*.py*') 
            }
        }
    }
}
