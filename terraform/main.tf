terraform {
    required_version = ">=1.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.8.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}

# modules
module "ec2_instance" {
  source = "./ec2_instance"
}
