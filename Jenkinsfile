pipeline {
  agent any
  stages {
    stage('Build') {
      agent any
      steps {
        sh '''npm install 
cd client
npm install 
cd ..
npm run dev'''
      }
    }

  }
}