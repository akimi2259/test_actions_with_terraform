# create s3 bucket resource
resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.name_prefix}-${var.env}-s3-bucket"
  
  tags = {
    Name        = "${var.name_prefix}-${var.env}-s3-bucket"
    Environment = var.env
    Project     = var.project_name
  }
}