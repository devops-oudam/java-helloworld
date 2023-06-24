pipeline {
    agent any

    stages {

        stage("Set deployment PARAM") {
            steps {
                script {
                    if (params.WORKSPACE == "dev") {
                        env.SERVER_IP == "10.203.10.78"
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

        stage('CopyFileToServer') {
            steps {
                echo "Welcome to ${param.WORKSPACE} deployment"
            }
        }

    }
}
