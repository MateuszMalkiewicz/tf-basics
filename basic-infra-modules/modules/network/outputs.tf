output "vpc" {
  value = aws_vpc.this.id
}

output "public_subnets" {
  value = ["${aws_subnet.public}"]
}

output "sg_id" {
  value = aws_security_group.ssh.id
}

output "subnet_id" {
  value = aws_subnet.public.0.id
}