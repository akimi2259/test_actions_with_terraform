# define VPC resource
resource "aws_vpc" "vpc" {
    cidr_block = var.vpc_cidr_block
    # VPCのCIDRを指定
    # VPCの名前を生成
  tags = {
    Name = "${ var.name_prefix }-${ var.env }-vpc"
    Environment = var.env
    Project = var.project_name
  }
    enable_dns_support = true
    enable_dns_hostnames = true
}