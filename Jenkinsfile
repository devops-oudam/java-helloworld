pipeline {
    agent any


    stages {
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
    }
}
