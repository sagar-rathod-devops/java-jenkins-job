pipeline { 
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/sagar-rathod-devops/java-jenkins-job.git'
            }
        }
        stage('Build Java Application') { 
            steps { 
                bat './mvnw clean package' 
            } 
        }

        stage('Build Docker Image') { 
            steps { 
                bat 'docker build -t my-java-app .' 
            } 
        }

        stage('Run Docker Container') { 
            steps { 
                bat 'docker run -d -p 8000:8000 my-java-app' 
            } 
        }
    }
}
