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
npm run dev
exit'''
      }
    }

  }
  environment {
    BRAINTREE_PUBLIC_KEY = 'abc'
    MONGO_URL = credentials('mongourl')
    BRAINTREE_MERCHANT_ID = 'abc2'
    BRAINTREE_PRIVATE_KEY = 'abc1'
    JWT_SECRET = 'jwt'
  }
}