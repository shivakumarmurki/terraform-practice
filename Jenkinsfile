pipeline {
  agent any
  environment {
    PATH = "${PATH}:${getTerraformPath()}"
  }

  stages {
    stage('Terraform Init') {
      steps{
        sh "terraform init"
      }
    }
  }
}

def getTerraformPath(){
  def tfHome = tool name: 'Terraform-1.2.5', type: 'terraform'
  return tfHome
}