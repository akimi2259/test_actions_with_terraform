# 変数の定義

variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-northeast-1"
}

variable "ami" {
  description = "AMI ID"
  type        = string
  default     = "ami-0c55b159cbfafe1f0" # Amazon Linux 2
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}

variable "env" {
  description = "Environment"
  type        = string
  default     = "develop"
}

variable "vpc_cidr_block" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "name_prefix" {
  description = "Name prefix"
  type        = string
  default     = "github-actions-test-wada"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "github-actions-test-wada"
}

