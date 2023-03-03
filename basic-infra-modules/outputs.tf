output "private_key" {
  value     = module.ec2.private_key
  sensitive = true
}

output "public_ip" {
  value = module.ec2.public_ip
}