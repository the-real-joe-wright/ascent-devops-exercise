/* ==== Variables used across all modules ==== */
locals {
  demo_availability_zones = ["us-east-1a", "us-east-1b"]
}

provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.aws_region}"
}

module "vpc" {
  source               = "./modules/vpc"
  environment          = "ascent-demo"
  vpc_cidr             = "10.0.0.0/16"
  public_subnets_cidr  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets_cidr = ["10.0.10.0/24", "10.0.20.0/24"]
  region               = "${var.aws_region}"
  availability_zones   = "${local.demo_availability_zones}"
}

module "ecs" {
  source              = "./modules/ecs"
  environment         = "ascent-demo"
  vpc_id              = "${module.vpc.vpc_id}"
  availability_zones  = "${local.demo_availability_zones}"
  repository_name     = "ascent-demo"
  private_subnet_ids  = ["${module.vpc.private_subnets_id}"]
  public_subnet_ids   = ["${module.vpc.public_subnets_id}"]
  security_groups_ids = ["${module.vpc.security_groups_ids}"]
}
