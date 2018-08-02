pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh './build.sh'
      }
    }
    stage('Login') {
      steps {
        withCredentials(bindings: [usernameColonPassword(credentialsId: 'DOCKERHUB_PWD', variable: 'USRPWD')]) {
          sh "docker login"
        }

      }
    }
  }
}