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
                    sh 'docker build -t username/ecommerceapp . '
             docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("c1l2o3u4d5/ecommerceapp")
                    }
                }
            }
        }
    }
}
