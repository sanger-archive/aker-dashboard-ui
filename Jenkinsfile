pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                rvm 'bundle install'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
