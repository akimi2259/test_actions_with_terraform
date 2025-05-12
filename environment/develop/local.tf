# local変数の定義

locals {
  # 環境変数の定義
  env = var.env
  # terraformのバージョン
  terraform_version = "1.4.6"
  # AWSのリージョン
  region = var.aws_region
  # VPCのCIDR
  vpc_cidr = var.vpc_cidr_block
  # 接頭辞
  name_prefix = var.name_prefix 
  # プロジェクト名
  project_name = var.project_name
}