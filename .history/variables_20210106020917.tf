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

variable "vpc_output_description" {
  default = "192.168.0.0/16"
  type    = string
}

variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = string
}
