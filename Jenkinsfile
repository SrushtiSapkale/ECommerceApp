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
  environment {
    BRAINTREE_PUBLIC_KEY = 'abc'
  }
}