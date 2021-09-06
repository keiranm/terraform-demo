provider "aws" {
  region = "ap-southeast-2"
  access_key = ""
  secret_key = ""
}

module "vpc_example_simple-vpc" {
  source  = "terraform-aws-modules/vpc/aws//examples/simple-vpc"
  version = "3.7.0"
}