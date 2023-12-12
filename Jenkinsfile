pipeline {
  agent any
  stages {
    stage('Docker') {
      agent any
      steps {
        sh '''docker build -t dockerhub/ecommerceapp .
docker push dockerhub/ecommerceapp '''
      }
    }

  }
  environment {
    BRAINTREE_PUBLIC_KEY = 'abc'
    MONGO_URL = credentials('mongourl')
    BRAINTREE_MERCHANT_ID = 'abc2'
    BRAINTREE_PRIVATE_KEY = 'abc1'
    JWT_SECRET = 'jwt'
    dockerhub = 'dockerhub'
  }
}