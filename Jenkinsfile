pipeline {
  agent any
  environment {
    PATH = "${PATH}:${getTerraformPath()}"
  }

  stages {
    stage('Terraform Init') {
      steps{
        sh '''
          terraform init -reconfigure -backend-config="access_key=AKIA262M72JNKLRTZMWE" -backend-config="secret_key=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"
        '''
      }
    }
  }
}

def getTerraformPath(){
  def tfHome = tool name: 'Terraform-1.2.5', type: 'terraform'
  return tfHome
}