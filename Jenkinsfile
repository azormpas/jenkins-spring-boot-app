pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '''
                ./jenkins/build/mvn.sh mvn clean install
                ./jenkins/build/build.sh
                '''
            }
        }
         stage('Test') {
            steps {
                sh '''
                ./jenkins/test/mvn.sh mvn test
                '''
            }
        }
          stage('Push Docker Image') {
            steps {
                sh '''
                ./jenkins/push/push.sh
                '''
            }
        }
        stage('Deploy') {
            steps {
                sh '''
                ./jenkins/deploy/deploy.sh
                '''
            }
        }
    }
}
