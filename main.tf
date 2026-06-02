terraform {
  required_version = ">= 1.5"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_demo" {
  bucket = "kenneth-demo-terraform-bucket"

  tags = {
    Environment = "Demo"
    ManagedBy   = "Terraform"
  }
}
