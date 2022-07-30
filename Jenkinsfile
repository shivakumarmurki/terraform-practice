pipeline {
  agent any
  environment {
    PATH = "${PATH}:${getTerraformPath()}"
  }

  stages {
    stage('Terraform Init and apply - Dev') {
      steps{
        sh returnStatus: true, script: 'terraform workspace new dev'
        sh '''
          terraform init -reconfigure
          terraform apply -var-file=dev.tfvars -auto-approve 
        '''
      }
    }
    stage('Terraform Init and apply - Prod') {
      steps{
        sh returnStatus: true, script: 'terraform workspace new Prod'
        sh '''
          terraform init -reconfigure
          terraform apply -var-file=prod.tfvars -auto-approve
        '''
      }
    }
  }
}

def getTerraformPath(){
  def tfHome = tool name: 'Terraform-1.2.5', type: 'terraform'
  return tfHome
}