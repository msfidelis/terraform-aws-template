resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"

    enable_dns_hostnames = var.vpc_dns_support
    enable_dns_support   = var.vpc_dns_support

    tags = {
        Name = var.project_name
    }
}