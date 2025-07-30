module "vpc" {
  source             = "./modules/vpc"
  name               = var.name
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  az                 = var.az
}
module "sg" {
  source          = "./modules/sg"
  sg_name         = var.sg_name
  sg_description  = var.sg_description
  vpc_id          = module.vpc.vpc_id
  ingress_rules   = var.ingress_rules
}
module "key_pair" {
  source           = "./modules/key_pair"
  key_name         = var.key_name
  public_key_path  = var.public_key_path
}
module "ec2" {
  source             = "./modules/ec2"
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  subnet_id          = module.vpc.subnet_id
  security_group_id  = module.sg.sg_id
  key_name           = var.key_name
  instance_names      = var.instance_names
  user_data          = var.user_data
  root_volumes        = var.root_volumes
}
