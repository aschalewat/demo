pipeline {
    agent any
    tools{
        maven 'maven'
        jdk 'Java8'
    }

    stages {
        stage('Checkout') {
                echo "test"
                    try {
                        checkout scm
                    } catch (error) {
                        echo "${error}"
                        error()
                    }
               }
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
