# create ec2 instance resource

resource "aws_instance" "ec2_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = module.subnet.subnet_id

  tags = {
    Name        = "${var.name_prefix}-${var.env}-ec2-instance"
    Environment = var.env
    Project     = var.project_name
  }
}