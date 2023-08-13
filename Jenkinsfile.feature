pipeline {
    parameters{
        string(name: 'TEST', defaultValue: '', description: 'This is a test parameter')
    }

    agent any
    tools{
        maven 'Maven3'
        jdk 'Java8'
    }

    environment{
        SONAR_HOME = tool 'SonarScanner'
        SONAR_SCANNER = "$SONAR_HOME/bin/sonar-scanner"
    }


    stages {
        stage('Checkout') {
            steps{
                sh    'echo "test"'
                    checkout scm
                }
            }

        stage('Sonar'){
                    steps{
                        withSonarQubeEnv("Sonarqube"){
                            sh """
                            $SONAR_SCANNER
                            """
                        }
                    }
        }
        stage('Build') {
            steps {
                echo 'Buildin..'
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
