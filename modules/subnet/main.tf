# create private subnet resource
resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.subnet_cidr_block

  tags = {
    Name        = "${var.name_prefix}-${var.env}-private-subnet"
    Environment = var.env
    Project     = var.project_name
  }
}