resource "aws_elasticsearch_domain" "example" {
  domain_name           = "example"
  elasticsearch_version = "1.5"

  vpc_id       = aws_vpc.main.id

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