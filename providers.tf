provider "aws" {
    region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "siri.muriki"
    key = "terraform/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}