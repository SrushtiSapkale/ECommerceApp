pipeline {
  agent any
  stages {
    stage('Docker') {
      agent any
      steps {
        sh '''sudo docker build -t c1l2o3u4d5/ecommerceapp .
sudo docker push c1l2o3u4d5/ecommerceapp .
'''
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