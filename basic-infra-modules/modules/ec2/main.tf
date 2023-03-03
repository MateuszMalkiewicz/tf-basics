resource "aws_instance" "this" {
  ami                         = var.ami_id
  instance_type               = "t2.micro"
  vpc_security_group_ids      = [var.sg_id]
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true
  key_name                    = aws_key_pair.this.key_name

  tags = {
    Name = "${var.environment}-ec2"
  }
}

resource "tls_private_key" "this" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "this" {
  key_name   = "${var.key_pair_name}-module"
  public_key = tls_private_key.this.public_key_openssh
}