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
                sh './mvnw clean package' 
            } 
        }

        stage('Build Docker Image') { 
            steps { 
                sh 'docker build -t my-java-app .' 
            } 
        }

        stage('Run Docker Container') { 
            steps { 
                sh 'docker run -d -p 8000:8000 my-java-app' 
            } 
        }
    }
}
