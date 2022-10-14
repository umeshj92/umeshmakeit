pipeline {
  agent any
  environment {
    AWS_DEFAULT_REGION="us-east-1"
  }
  stages {
    stage('Hello') {
      steps {
        sh '''
         chmod +x script.sh
          ./script.sh
      }
    }
  }
}
