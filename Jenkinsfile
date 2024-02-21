pipeline {
    agent any

    stages {

        stage("Set deployment PARAM") {
            steps {
                script {
                    if (params.WORKSPACE == "dev") {
                        env.SERVER_IP == "54.198.180.237"
                    }else if (params.WORKSPACE == "uat") {
                        env.SERVER_IP == "10.203.10.78"
                    }else if (params.WORKSPACE == "prod") {
                        env.SERVER_IP == "10.203.10.78"
                    }
                }
            }
        }

        stage('Build') {
            steps {
                sh "mvn clean package"
            }
        }

        stage('UnitTest') {
            steps {
                sh "mvn test"
            }
        }

        stage('Build Docker') {
            steps {
                echo "Starting docker build..."
                sh "docker build -t myhello:0.0.1 ."
            }
        }

        stage('Push Docker to Registry') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'DockerRegistryCredential', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh '''
                        echo "Logging into Docker registry..."
                        docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
                        echo "Pushing Docker image to registry..."
                        # Your Docker push command here
                    '''
                }
            }
        }


        stage('Execute deployment script') {
            steps {
                echo "Starting docker push..."
            }
        }

    }
}
