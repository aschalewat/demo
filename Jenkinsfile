pipeline {
    agent any
    tools{
        maven 'maven'
        jdk 'Java8'
    }

    stages {
        steps('Checkout') {
            steps{
                echo "test"
                    try {
                        checkout scm
                    } catch (error) {
                        echo "${error}"
                        error()
                    }
                }
            }
        steps('Build') {
            steps {
                echo 'Building..'
            }
        }
        steps('Test') {
            steps {
                echo 'Testing..'
            }
        }
        steps('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
