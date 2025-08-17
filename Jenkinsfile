@Library("jenkins_shared_library") _
pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                script{
                    gitCheckout(config)
                    def gitCheckout(config) {
                        url: https://github.com/vinayak4393/Jenkins.git
                        branch: 'main'
                        credentialsId:  github_token
                    }
                }
            }    
        }
    }
}    