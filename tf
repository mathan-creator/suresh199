pipeline {
   agent any
   stages {
    stage('Deploy') {
      steps {
        script {
          sh 'PATH=/bin/terraform'
          sh 'terraform init'
	  sh 'terraform apply -inupt=false'
	//	sh "aws cloudformation deploy --template-file ec2cf.json --stack-name=${stackname} --parameter-overrides InstanceType=${InstanceType} KeyName=${KeyName} TagName=${TagName} --region 'us-east-2'" 
		
	 // sh  "aws cloudformation delete-stack --stack-name teststack2"
           
          }
       }
    }
	}
	}