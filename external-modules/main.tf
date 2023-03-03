resource "aws_security_group" "this" {
  name   = "${var.environment}-sg"
  vpc_id = module.vpc.vpc_id

  ingress {
    from_port   = "22"
    to_port     = "22"
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "tcp"
  }

  tags = {
    Environment = "${var.environment}"
  }
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.environment}-vpc"
  cidr = var.vpc_cidr

  azs             = var.availability_zones
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  tags = {
    Environment = var.environment
  }
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "${var.environment}-ec2"

  ami                    = var.ami_id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.this.id]
  subnet_id              = module.vpc.public_subnets[0]

  tags = {
    Environment = var.environment
  }
}