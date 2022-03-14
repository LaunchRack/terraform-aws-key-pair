terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = "~> 1.0"
}

provider "aws" {
  region = var.region
}

module "aws_key_pair" {
  source = "../"

  key_name   = var.key_name
  public_key = var.public_key
  tags       = var.tags
}
