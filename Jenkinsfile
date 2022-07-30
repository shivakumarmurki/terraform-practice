pipeline {
  agent any
  environment {
    PATH = "${PATH}:${getTerraformPath()}"
  }

  stages {
    stage('Cleanup') {
      steps{
        deleteDir()
      }
    }
    stage("Checkout from GIT")
    {
      steps {
        git branch: 'master', url: 'https://github.com/shivakumarmurki/terraform-practice'
      }
    }
    /*
    stage("Terraform init") {
      steps{
        sh 'terraform init'
      }
    }
    stage("Terraform fmt"){
      steps{
        sh 'terraform fmt'
      }
    }
    stage("Terraform validate"){
      steps{
        sh 'terraform validate'
      }
    }
    stage("Terraform plan"){
      steps {
        sh 'terraform plan'
      }
    }
    stage("Terraform apply"){
      steps {
        sh 'terraform apply --auto-approve'
      }
    }
    */
    stage('Terraform Init and apply - Dev') {
      steps{
        sh returnStatus: true, script: 'terraform workspace new dev'
        sh '''
          terraform init
          terraform apply -var-file=dev.tfvars --auto-approve 
        '''
      }
    }
    stage('Terraform Init and apply - Prod') {
      steps{
        sh returnStatus: true, script: 'terraform workspace new Prod'
        sh '''
          terraform init
          terraform apply -var-file=prod.tfvars --auto-approve
        '''
      }
    }
  }
}

def getTerraformPath(){
  def tfHome = tool name: 'Terraform-1.2.5', type: 'terraform'
  return tfHome
}