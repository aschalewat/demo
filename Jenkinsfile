pipeline {
    agent any
tools{
    maven 'maven'
    jdk 'jdk1.8'
}
 stage('Checkout') {
        echo "test"
            try {
                checkout scm
            } catch (error) {
                echo "${error}"
                error()
            }
        }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
