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
                echo "Welcome to ${params.WORKSPACE} deployment"
                sh "cp target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar ${env.SERVER_IP}:/opt/helloworld/versions/hello_${BUILD_NUMBER}.jar"
            }
        }

    }
}
