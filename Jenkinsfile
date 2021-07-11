pipeline {
  agent { label "master" }
  environment {
    AWS_DEFAULT_REGION="ap-south-1"
    THE_BUTLER_SAYS_SO=credentials('awsCredentials')
  }
    tools {
        terraform 'Terraform'
    }
    stages {
        stage ("checkout from GIT") {
            steps {
                git branch: 'main', credentialsId: 'ec2-user', url: 'https://github.com/shubhamrp1699/terrafrom_jenkins'
            }
        }
        stage ("terraform init") {
            steps {
                sh 'terraform init'
            }
        }
        stage ("terraform fmt") {
            steps {
                sh 'terraform fmt'
            }
        }
        stage ("terraform validate") {
            steps {
                sh 'terraform validate'
            }
        }
        stage ("terrafrom plan") {
            steps {
                sh 'terraform plan '
            }
        }
        stage ("terraform apply") {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
        stage ("terraform destroy") {
            steps {
                sh 'terraform destroy --auto-approve'
            }
        }
    }
}
