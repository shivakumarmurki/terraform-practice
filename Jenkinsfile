pipeline {
  agent any
  environment {
    PATH = "${PATH}:${getTerraformPath()}"
  }

  stages {
    stage('Terraform Init and apply - Dev') {
      steps{
        sh "sh returnStatus: true, script: 'terraform workspace new dev'"
        sh '''
          terraform init -backend-config="access_key=AKIA262M72JNKLRTZMWE" -backend-config="secret_key=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"
          terraform apply -var-file=dev.tfvars -auto-approve
        '''
      }
    }
    stage('Terraform Init and apply - Prod') {
      steps{
        sh "sh returnStatus: true, script: 'terraform workspace new Prod'"
        sh '''
          terraform init -backend-config="access_key=AKIA262M72JNKLRTZMWE" -backend-config="secret_key=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"
          terraform apply -var-file=deprodv.tfvars -auto-approve
        '''
      }
    }
  }
}

def getTerraformPath(){
  def tfHome = tool name: 'Terraform-1.2.5', type: 'terraform'
  return tfHome
}