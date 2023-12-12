pipeline {
    agent any

    environment {
        BRAINTREE_PUBLIC_KEY = 'abc'
        MONGO_URL = credentials('mongourl')
        BRAINTREE_MERCHANT_ID = 'abc2'
        BRAINTREE_PRIVATE_KEY = 'abc1'
        JWT_SECRET = 'jwt'
        DOCKERHUB_CREDENTIALS = 'docker-hub-credentials'
    }

    stages {
        stage('Docker') {
            agent any
            steps {
                script {
                    sh 'docker build -t dockerhub/ecommerceapp . '
                    withCredentials([usernamePassword(credentialsId: DOCKERHUB_CREDENTIALS, passwordVariable: 'DOCKERHUB_CREDENTIALS_PASSWORD', usernameVariable: 'DOCKERHUB_CREDENTIALS_USER')]) {
                        sh "docker login -u ${env.DOCKERHUB_CREDENTIALS_USER} -p ${env.DOCKERHUB_CREDENTIALS_PASSWORD}"
                        sh 'docker push c1l2o3u4d5/ecommerceapp '
                    }
                }
            }
        }
    }
}
