pipeline {
  agent any
  stages {
      stage ('GIT Checkout') {
         steps {
           git branch: 'main', url: 'https://github.com/tmkirankumar786/Jenkins-to-docker'
           echo 'GIT Checkout Successful'
         }
      }
      stage ('Build Docker Image') {
         steps {
           script {
             def dockerImage = docker.build("Jenkins-to-docker-image")
             echo 'Docker Image Created Succesful'
           }
        }
      }
      stage ('Create a Container') {
         steps {
           script {
             docker.image('Jenkins-to-docker-image').run('-d --name cont-jen-to-doc')
             echo 'Docker Container Started'
           }
        }
      }
  }
}
