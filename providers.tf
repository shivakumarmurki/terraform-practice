provider "aws" {
    region = "${var.region}"
    profile = "profile1"
}

terraform {
  backend "s3" {
    bucket = "siri.muriki"
    key = "terraform/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}