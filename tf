pipeline {
   agent any
   stages {
    stage('Deploy') {
      steps {
        script {
                  
		sh 'terraform init' 
		sh 'terraform apply -input-false' 
	 // sh  "aws cloudformation delete-stack --stack-name teststack2"
           
          }
       }
    }
	}
	}
