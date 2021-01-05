resource "aws_elasticsearch_domain" "example" {
  domain_name           = var.el
  elasticsearch_version = "1.5"
#   subnets      = aws_subnet.private_1.*.id
#   vpc_id       = aws_vpc.main.id
#   vpc_options.0.availability_zones

  cluster_config {
    instance_type = "r4.large.elasticsearch"
  }

  snapshot_options {
    automated_snapshot_start_hour = 23
  }

  tags = {
    Domain = "TestDomain"
  }
}