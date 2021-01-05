variable "aws_region" {
  default = "ap-southeast-1"
}

variable "aws_profile" {
  default = "terraform"
}

variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = strin