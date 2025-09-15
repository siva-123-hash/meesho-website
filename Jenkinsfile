ipipeline {
    agent any

    environment {
        DOCKER_IMAGE = "siva123/meesho-website:v1"   // Change with your DockerHub repo
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/siva-123-hash/meesho-website.git'
            }
        }

        stage('Build with Maven') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        stage('Push to DockerHub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'siva0927-dockerhub',
                                                  usernameVariable: 'DOCKER_USER',
                                                  passwordVariable: 'DOCKER_PASS')]) {
                    sh '''
                      echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
                      docker push $DOCKER_IMAGE
                    '''
                }
            }
        }

        stage('Deploy Container') {
            steps {
                sh 'docker rm -f meesho-app || true'
                sh 'docker run -d --name meesho-app -p 8080:8080 $DOCKER_IMAGE'
            }
        }
    }
}

