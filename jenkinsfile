pipeline {
    agent any
    tools {
        maven 'Maven'
        
    }

    stages {
        stage('Checkout Git') {
            steps {
               git branch: 'main', url: 'https://github.com/VaraPrasadGudapati/DockerFileGenarator.git'
        }
        }
        
        stage('Maven clean') {
            steps {
              
              sh 'mvn clean '
            }
        }
        stage('Maven test') {
            steps {
              
              sh 'mvn test '
            }
        }
        stage('Maven package') {
            steps {
              
              sh 'mvn package'
            }
        }
        stage('Docker image') {
            steps {
                script {
                sh 'docker build -t mounika420/dockerfile-gen .'
                }
              }
        }
        stage('Dockerhub login in' ) {
            steps {
                script {
                  withCredentials([string(credentialsId: 'MounikaDockerhubpwd1', variable: 'MonikaDockerHub')]) {
                      sh 'docker login -u mounika420 -p ${MonikaDockerHub}'    
                }
                                   
                }
              }
        }
        stage ('Docker push') {
            steps {
                sh 'docker push mounika420/dockerfile-gen'    
            }
            
        }
     
        
    }
}
