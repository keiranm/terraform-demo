terraform {
  backend "remote" {
    organization = "kmcmanus3"
    workspaces {
      name = "terraform-demo"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

module "vpc_example_simple-vpc" {
  source  = "terraform-aws-modules/vpc/aws//examples/simple-vpc"
  version = "3.7.0"
}