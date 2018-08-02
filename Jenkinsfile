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
       withCredentials([usernameColonPassword(credentialsId: 'DOCKERHUB_PWD', variable: 'USRPWD')]) {
                    sh "echo '$USRPWD'"
        } 
      }
    }
  }
}
