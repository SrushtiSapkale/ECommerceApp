pipeline {
  agent any
  stages {
    stage('Build') {
      agent any
      steps {
        sh '''npm install --production=false 
cd client
npm install --production=false 
cd ..
npm start
npm run dev'''
      }
    }

  }
}