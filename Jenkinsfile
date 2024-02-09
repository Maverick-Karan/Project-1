pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
		
		sh '''
                  ./pipeline/build/mvn.sh mvn -DskipTests clean package
                  ./pipeline/build/build.sh
                '''
            }
        }

        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }

        stage('Push') {
            steps {
                echo 'Pushing...'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying...'
            }
        }

    }
}

