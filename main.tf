provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "Action-VPC" {
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "Actions-VPC"
    env  = "prod"
  }
}
/*
terraform {
  backend "s3" {
    bucket = "buck-git-terra-action"
    key    = "gitactions/terraform.tfstate"
    region = "us-east-1"
  }
}
*/