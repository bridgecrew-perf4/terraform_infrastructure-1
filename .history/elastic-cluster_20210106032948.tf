resource "aws_elasticsearch_domain" "example" {
  domain_name           = var.elasticsearch_domain
  elasticsearch_version = var.elasticsearch_version
#   subnets      = aws_subnet.private_1.*.id
#   vpc_id       = aws_vpc.main.id
#   vpc_options.0.availability_zones

  cluster_config {
    instance_type = "r4.large.elasticsearch"
  }

  snapshot_options {
    automated_snapshot_start_hour = aws.ela
  }

  tags = {
    Domain = "TestDomain"
  }
}