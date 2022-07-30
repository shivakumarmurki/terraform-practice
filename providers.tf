provider "aws" {
    region = "${var.region}"
    access_key = "AKIA262M72JNKLRTZMWE"
    secret_key = "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"
    
}

terraform {
  backend "s3" {
    bucket = "siri.muriki"
    key = "terraform/terraform.tfstate"
    region = "ap-south-1"
  }
}