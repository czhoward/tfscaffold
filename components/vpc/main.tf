# Terraform configuration

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.0.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}


module "basic_vpc" {
  source = "../../modules/vpc-basic"

  vpc_cidr = "10.0.0.0/16"

  default_tags = var.default_tags
}
