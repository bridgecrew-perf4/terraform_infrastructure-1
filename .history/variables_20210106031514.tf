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

variable "public_subnet_cidr_block" {
  default = "192.168.128.0/18"
  type    = string
}

variable "private_subnet_cidr_block" {
  default = "192.168.192.0/18"
  type    = string
}

variable "private_subnet_availability_zone" {
  default = "ap-southeast-1a"
  type    = string
}

variable "public_subnet_availability_zone" {
  default = "ap-southeast-1a"
  type    = string
}

variable "security_group_name" {
  default = "allow_tls"
  type    = string
}

variable "security_group_description" {
  default = "ap-southeast-1a"
  type    = string
}