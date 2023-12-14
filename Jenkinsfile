pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        script {
          dockerImage = docker.build registry
        }

      }
    }

    stage('Push') {
      steps {
        script {
          docker.withRegistry( '', DOCKERHUB_CREDENTIALS ) {
            dockerImage.push()
          }
        }

      }
    }

    stage('Deploy to container') {
      steps {
        sh 'docker pull c1l2o3u4d5/ecommerceapp && docker run -d -p 8081:80 c1l2o3u4d5/ecommerceapp'
      }
    }

  }
  environment {
    registry = 'c1l2o3u4d5/ecommerceapp'
    BRAINTREE_PUBLIC_KEY = 'abc'
    MONGO_URL = 'mongourl'
    BRAINTREE_MERCHANT_ID = 'abc2'
    BRAINTREE_PRIVATE_KEY = 'abc1'
    JWT_SECRET = 'jwt'
    DOCKERHUB_CREDENTIALS = 'docker-hub-credentials'
  }
}