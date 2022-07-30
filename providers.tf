provider "aws" {
    region = "${var.region}"
    profile = "${var.profile}" 
}

terraform {
  backend "s3" {
    bucket = "siri.muriki"
    key = "terraform/terraform.tfstate"
    region = "ap-south-1"
    profile = "profile1"
  }
}