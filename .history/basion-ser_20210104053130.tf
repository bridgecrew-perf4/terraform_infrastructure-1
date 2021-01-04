module "bastion" {
  source = "umotif-public/bastion/aws"
  version = "~> 1.4.0"

  name_prefix = "core-example"

  vpc_id         = "vpc-abasdasd132"
  subnets        = ["subnet-abasdasd132123", "subnet-abasdasd132123132"]

  hosted_zone_id = "Z1IY32BQNIYX16"
  ssh_key_name   = "test"

  tags = {
    Project = "Test"
  }
}