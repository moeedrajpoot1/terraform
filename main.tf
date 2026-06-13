terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {

    region = "eu-north-1"
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "first-terraform-bucket-206"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}