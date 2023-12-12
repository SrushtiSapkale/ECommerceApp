pipeline {
  agent any
  stages {
    stage('Docker') {
      agent any
      steps {
        sh '''docker build -t DockerHub/ecommerceapp .
docker push DockerHub/ecommerceapp '''
      }
    }

  }
  environment {
    BRAINTREE_PUBLIC_KEY = 'abc'
    MONGO_URL = credentials('mongourl')
    BRAINTREE_MERCHANT_ID = 'abc2'
    BRAINTREE_PRIVATE_KEY = 'abc1'
    JWT_SECRET = 'jwt'
    DockerHub = 'DockerHub'
  }
}