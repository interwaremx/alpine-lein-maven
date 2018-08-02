pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh './build.sh'
      }
    }
    stage('Publish') {
      when {
        branch 'master'
      }
      steps {
        withDockerRegistry([ credentialsId: "DOCKERHUB_PWD", url: "" ]) {
          sh 'docker push interwaremx/alpine-lein-maven:1.0'
        }
      }
    }
  }
}
