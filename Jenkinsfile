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
            steps {   
                echo 'show path'
                sh 'pwd'
		        script {
                customImage = docker.build("pruebas:v1")

		    }
		  }
	    }

    }
}