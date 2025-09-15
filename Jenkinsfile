pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
               git branch: 'main', url:'https://github.com/siva-123-hash/meesho-website.git'
            }
        } 
        stage('Build') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }


        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t siva0927/meesho:v1 .'
                }
            }
        }

        stage('Push to DockerHub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'siva0927-dockerhub', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    sh "echo $PASS | docker login -u $USER --password-stdin"
                    sh "docker push siva0927/meesho:v1"
                }
            }
        }

        stage('Run Container (Local Test)') {
            steps {
                sh 'docker run -d -p 8081:8080 --name meesho-test siva0927/meesho:v1 || true'
            }
        }

        stage('Deploy to Docker Swarm') {
            steps {
                sh '''
                docker service rm samsung-site || true
                docker service create --name meesho-site -p 8081:8080 siva0927/meesho:v1
                '''
            }
        }
    }
}

