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
    PORT = 'port'
    DEV_MODE = 'devmode'
    MONGO_URL = 'mongourl'
    BRAINTREE_MERCHANT_ID = 'abc2'
    BRAINTREE_PRIVATE_KEY = 'abc1'
    JWT_SECRET = 'jwt'
  }
}