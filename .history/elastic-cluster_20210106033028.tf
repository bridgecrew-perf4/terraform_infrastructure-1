resource "aws_elasticsearch_domain" "example" {
  domain_name           = var.elasticsearch_domain
  elasticsearch_version = var.elasticsearch_version
#   subnets      = aws_subnet.private_1.*.id
#   vpc_id       = aws_vpc.main.id
#   vpc_options.0.availability_zones

  cluster_config {
    instance_type = var.elasticsearch_cluster_config_instance_type
  }

  snapshot_options {
    automated_snapshot_start_hour = var.elasticsearch_snapshot_options_automated_snapshot_start_hour
  }

  tags = {
    Domain = "TestDomain"
  }
}