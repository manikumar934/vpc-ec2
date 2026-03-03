module "vpc" {
  source = "./modules/vpc"

  environment = var.environment
}

module "ec2" {
  source = "./modules/ec2"

  environment   = var.environment
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_id
  vpc_id        = module.vpc.vpc_id
}