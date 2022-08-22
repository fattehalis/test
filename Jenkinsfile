pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/fattehalis/test.git']]])
            }
        }
        stage ("Terraform init") {
            steps {
                sh ("terraform init");
            }
        }
        
        stage ("Terraform Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ("terraform ${action} --auto-approve");
            }
        }
    }
}
