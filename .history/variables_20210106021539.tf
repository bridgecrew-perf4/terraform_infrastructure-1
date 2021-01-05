variable "aws_region" {
  default = "ap-southeast-1"
}

variable "aws_profile" {
  default = "terraform"
  type    = string
}

variable "vpc_cidr_block" {
  default = "192.168.0.0/16"
  type    = string
}

variable "private_subnet_block" {
  default = "192.168.0.0/16"
  type    = string
}

variable "vpc_cidr_block" {
  default = "192.168.0.0/16"
  type    = string
}