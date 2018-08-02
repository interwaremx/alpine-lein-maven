pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh './build.sh'
      }
    }
  }
  environment {
    foo = 'barbazqux'
  }
}