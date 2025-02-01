variable "region" {
  type = string
  default = "us-east-1"
}

variable "ciblk" {
  type = string
  default = "10.0.0.0/24"
}

variable "name" {
  type = string
  default = "Tykama-VPC"
}

variable "env" {
  type = string
  default = "dev"
}