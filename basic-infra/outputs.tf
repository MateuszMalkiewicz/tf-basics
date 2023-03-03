output "vpc_id" {
  value = aws_vpc.this.id
}

output "public_subnets_id" {
  value = ["${aws_subnet.public.*.id}"]
}

output "default_sg_id" {
  value = aws_security_group.ssh.id
}

output "security_groups_ids" {
  value = ["${aws_security_group.ssh.id}"]
}

output "public_route_table" {
  value = aws_route_table.public.id
}

output "public_ip" {
  value = aws_instance.this.public_ip
}

output "private_key" {
  value     = tls_private_key.this.private_key_pem
  sensitive = true
}

output "eip" {
  value = aws_eip.this.public_ip
}