pipeline {
    parameters{
        string(name: 'TEST', defaultValue: '', description: 'This is a test parameter')
    }

    agent any
    tools{
        maven 'Maven3'
        jdk 'Java8'
    }
    sh 'echo ${params.TEST}'

    stages {
        stage('Checkout') {
            steps{

               // try {
                //    echo "test"
                    checkout scm
               // } catch (error) {
                //    echo "${error}"
                 //   error()
                //}
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
