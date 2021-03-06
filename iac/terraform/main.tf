terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.9.0"
    }
  }

  required_version = "~> 1.0"
}

provider "aws" {
  region     = var.aws_region
  access_key = var.accessKey
  secret_key = var.secretKey
}



