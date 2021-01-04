module "my-cluster" {
  source       = "terraform-aws-modules/eks/aws"
  cluster_name = "my-cluster"
  cluster_version = ""
  subnets      = aws_subnet.private_1.*.id
  vpc_id       = aws_vpc.main.id

  worker_groups = [
    {
      instance_type = "t2.micro"
      asg_max_size  = 5
      tags = {
        key                 = "foo"
        value               = "bar"
        propagate_at_launch = true
      }
    }
  ]

  tags = {
    environment = "test"
  }
}