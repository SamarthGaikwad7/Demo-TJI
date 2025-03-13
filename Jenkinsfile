pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
        AWS_DEFAULT_REGION    = 'us-east-1'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/SamarthGaikwad7/Terraform-jenkins-project-1.git'
            }
        }
        stage('Terraform Init') {
            steps {
                bat 'terraform init'
            }
        }
        stage('Plan') {
            steps {
                bat 'terraform plan -out=tfplan'
                bat 'terraform show -no-color tfplan > tfplan.txt'
            }
        }
        stage('Apply') {
            steps {
                script {
                    def plan = readFile 'tfplan.txt'
                    input message: "Do you want to apply the plan?",
                    parameters: [text(name: 'Plan', description: 'Please review the plan', defaultValue: plan)]
                    bat "terraform apply -input=false tfplan"
                }
            }
        }
    }
}
