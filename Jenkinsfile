pipeline {
    options {
      buildDiscarder(logRotator(numToKeepStr: '2'))
      disableConcurrentBuilds()
      skipStagesAfterUnstable()
      timeout(time: 10, unit: 'MINUTES')
    }

    agent any

    environment {
      DOCKER_IMAGE_NAME = "sample"
    }

    stages {        
        stage('Build Docker Image') {
          agent {
                docker {
                    image 'docker:latest'
                    reuseNode true
                }
            }
          steps {
            script {
                customImage = docker.build("${env.DOCKER_IMAGE_NAME}:${env.BUILD_ID}")
            }
          }
        }
    }
}