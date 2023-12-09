pipeline {
  agent any
  stages {
    stage('Build') {
      agent any
      steps {
        sh 'npm install'
        dir(path: 'client') {
          sh 'npm install'
        }

        dir(path: 'ECommerceApp')
      }
    }

    stage('Run') {
      steps {
        sh 'npm run dev'
      }
    }

  }
}