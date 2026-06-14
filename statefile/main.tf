terraform {
    backend "s3" {
    bucket = "terraform-state-bucket-206"
    key    = "dev/terraform.tfstate"
    region = "eu-north-1"
    encrypt = true
    use_lockfile = true


  }
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