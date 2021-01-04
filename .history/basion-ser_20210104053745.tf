resource "bastion" "bastion_ser"{
  source = "umotif-public/bastion/aws"
  version = "~> 1.4.0"

  name_prefix = "core-example"

  vpc_id         = aws_vpc.main.id
  subnets        = aws_subnet.public_1.*.id

  hosted_zone_id = "Z1IY32BQNIYX16"
  ssh_key_name   = "test"

  tags = {
    Project = "Test"
  }
}