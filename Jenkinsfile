pipeline {
    agent any
    environment {
      PASS = credentials('dockerhub-pass')
   }
    
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
		
		sh '''
                  ./pipeline/build/mvn.sh mvn -DskipTests clean package
                  ./pipeline/build/build.sh
                '''
            }
	    post {
		success {
		    archiveArtifacts artifacts: 'java-app/target/*.war', fingerprint: true
		}
	    }
        }

        stage('Test') {
            steps {
                echo 'Testing...'

		sh './pipeline/test/test.sh mvn test'
            }
	    post {
		always {
		    junit 'java-app/target/surefire-reports/*.xml'
		}
	    }
        }

        stage('Push') {
            steps {
                echo 'Pushing...'
		sh './pipeline/push/push.sh'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying...'
            }
        }

    }
}

