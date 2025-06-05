module "aws_vpc" {
  source                = "../modules/vpc"
  vpc_cidr              = var.vpc-cidr
  public_subnet_cidr    = var.public-subnet-cidr
  private_subnet_cidr_1 = var.private_subnet_cidr_1
  private_subnet_cidr_2 = var.private_subnet_cidr_2
  az1                   = var.az1
  az2                   = var.az2
  az3                   = var.az3
  project               = var.project
}

module "aws_security_group" {
  source  = "../modules/sg"
  vpc_id  = module.aws_vpc.vpc_id
  project = var.project
}

module "aws_ec2" {
  source              = "../modules/ec2"
  ami                 = var.ami
  instance_type       = lookup(var.instance_type, terraform.workspace, "t2.micro")
  public_subnet_id    = module.aws_vpc.public_subnet_id
  private_subnet_id_1 = module.aws_vpc.private_subnet_ids[0]
  security_group_ids  = [module.aws_security_group.security_group_id]
  key_name            = var.key_name
  public_ec2_number   = var.public_ec2_number
  private_ec2_number  = var.private_ec2_number
  project             = var.project
}

module "aws_rds" {
  source             = "../modules/rds"
  project            = var.project
  private_subnet_ids = module.aws_vpc.private_subnet_ids
  allocated_storage  = var.allocated_storage
  engine             = var.engine
  engine_version     = var.engine_version
  instance_class     = var.instance_class
  username           = var.username
  password           = var.password
  security_group_ids = [module.aws_security_group.security_group_id]
}

module "aws_s3" {
  source  = "../modules/s3"
  project = var.project
}

module "backend" {
  source  = "../modules/backend"
  project = var.project
}
