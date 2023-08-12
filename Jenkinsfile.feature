pipeline {
    parameters{
        string(name: 'TEST', defaultValue: '', description: 'This is a test parameter')
    }

    agent any
    tools{
        maven 'Maven3'
        jdk 'Java8'
    }


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

        stage('Sonar'){
            steps{
                withSonarQubeEnv("Sonarqube"){
                    sh """
                    $SONAR_SCANNER
                    """
                }

                script{
                                def gate

                                retry(10){
                                    timeout(unit: 'SECONDS', time: 10){
                                        gate = waitForQualityGate()
                                    }
                                }

                                if(gate.status !="OK") {
                                    error "Sonar quality gat failed with status : ${gate.status}"
                                }
                            }
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
