provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "Action-VPC" {
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "Actions-VPcc"
    env  = "tykama"
  }
}

terraform {
  backend "s3" {
    bucket = "titilop-eewrt-cdee-1332"
    key    = "gitactions/terraform.tfstate"
    region = "us-east-1"
  }
}
