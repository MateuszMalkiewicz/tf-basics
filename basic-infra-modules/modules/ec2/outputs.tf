output "ec2" {
  value=aws_instance.this
}

output "public_ip" {
  value = aws_instance.this.public_ip
}

output "private_key" {
  value     = tls_private_key.this.private_key_pem
  sensitive = true
}