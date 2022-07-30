provider "aws" {
    region = var.region
    access_key = var.access_key
    secret_key = var.secret_key
}

/*
terraform {
  backend "s3" {
    bucket = "siri.muriki"
    key = "terraform/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}
*/

