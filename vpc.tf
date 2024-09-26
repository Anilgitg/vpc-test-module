module "vpc" {
  #source                = "../terraform-aws-modules/vpc"
  source                = "git::https://github.com/Anilgitg/terraform-aws-modules.git//vpc?ref=main"
  vpc_cidr_block        = var.vpc_cidr_block
  project_name          = var.project_name
  environment           = var.environment
  common_tags           = var.common_tags
  public_subnet_cidrs   = var.public_subnet_cidrs
  private_subnet_cidrs  = var.private_subnet_cidrs
  database_subnet_cidrs = var.database_subnet_cidrs
  is_peering_required   = var.is_peering_required
}