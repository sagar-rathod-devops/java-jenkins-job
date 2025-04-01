pipeline { 
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/sagar-rathod-devops/java-jenkins-job.git'
            }
        }
    }
        stage('Build') { 
            steps { 
                echo 'Compiling code...' 
            } 
        } 
        stage('Test') { 
            steps { 
                echo 'Running test cases...' 
            } 
        } 
        stage('Deploy') { 
            steps { 
                echo 'Deploying application...' 
            } 
} 
} 
} 
