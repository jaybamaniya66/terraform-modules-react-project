provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc
  cidr = "10.0.0.0/16"

  azs             = var.az
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}


