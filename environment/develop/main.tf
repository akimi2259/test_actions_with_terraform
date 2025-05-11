terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    } # awsを使うための初期設定
  }
}

# Configure the AWS Provider
# まずはawsの基本設定を追加
# ここではregionとprofileを設定
provider "aws" {
  region  = "ap-northeast-1"
  profile = "default"
}

# create a vpc
module "vpc" {
    source = "../../modules/vpc"
}

# create a private subnet
module "private_subnet" {
    source = "../../modules/private_subnet"
}

# create a s3 bucket
module "s3" {
    source = "../../modules/s3"
}

# create a ec2 instance
module "ec2" {
    source = "../../modules/ec2"
}