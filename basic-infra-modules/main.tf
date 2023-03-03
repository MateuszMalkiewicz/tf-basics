module "vpc" {
  source = "./modules/network"

  region               = "eu-central-1"
  vpc_cidr             = "10.10.0.0/16"
  public_subnets_cidr  = ["10.10.10.0/24"]
  private_subnets_cidr = ["10.10.20.0/24"]
  availability_zones   = ["eu-central-1a"]
}

module "ec2" {
  source = "./modules/ec2"
  # depends_on = [
  #   module.vpc
  # ]

  ami_id    = "ami-0a1ee2fb28fe05df3"
  sg_id     = module.vpc.sg_id
  subnet_id = module.vpc.subnet_id
}