pipeline {
    agent any
    stages {
        stage("Verify tooling") {
            steps {
                sh '''
                  docker info
                  docker version
                  docker-compose version
                  curl --version
                '''
            }
        }
        stage("Prune Docker data") {
            steps {
                sh 'docker system prune -a --volumes -f'
            }
        }
        stage("Start container") {
            steps {
                sh 'docker-compose up -d --no-color --wait'
                sh 'docker-compose ps'
            }
        }
        stage("Run tests against the container") {
            steps {
                sh 'curl http://localhost:5000'
            }
        }
    }
    post {
        always {
            sh 'echo The site is available under $(ip addr show eth0 | grep "inet\b" | awk '{print $2}' | cut -d/ -f1):5000'
        }
    }
}