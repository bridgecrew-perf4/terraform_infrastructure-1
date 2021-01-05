module "my-cluster" {
  source       = "terraform-aws-modules/eks/aws"
  cluster_name = "my-cluster"
  cluster_version = 1.18
  subnets      = aws_subnet.private_1.*.id
  vpc_id       = aws_vpc.main.id

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  tags = {
    environment = "test"
  }
}