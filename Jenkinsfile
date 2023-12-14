pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t c1l2o3u4d5/ecommerceapp .'
      }
    }

    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }

    stage('Push') {
      steps {
        sh 'docker push c1l2o3u4d5/ecommerceapp'
      }
    }

  }
  environment {
    BRAINTREE_PUBLIC_KEY = 'abc'
    MONGO_URL = 'mongourl'
    BRAINTREE_MERCHANT_ID = 'abc2'
    BRAINTREE_PRIVATE_KEY = 'abc1'
    JWT_SECRET = 'jwt'
    DOCKERHUB_CREDENTIALS = 'docker-hub-credentials'
  }
}