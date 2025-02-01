provider "aws" {
  region = var.region
}

resource "aws_vpc" "Action-VPC" {
  cidr_block = var.ciblk

  tags = {
    Name = var.name
    env  = var.env
  }
}

terraform {
  backend "s3" {
    bucket = "titilop-eewrt-cdee-1332"
    key    = "gitactions/terraform.tfstate"
    region = var.region
  }
}