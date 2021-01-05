variable "aws_region" {
  default = "ap-southeast-1"
}

variable "aws_profile" {
  default = "terraform"
  type    = string
}

variable "vpc_cidr_block" {
  default = "terraform"
  type    = string
}

variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = string
}
