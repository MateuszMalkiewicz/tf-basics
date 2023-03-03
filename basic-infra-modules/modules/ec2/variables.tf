variable "environment" {
  type        = string
  default     = "skillup2"
  description = "Environment name"
}

variable "ami_id" {
  type        = string
  default     = "ami-0a1ee2fb28fe05df3"
  description = "The AMI ID to use when creating EC2 instance"
}

variable "key_pair_name" {
  type        = string
  default     = "private_key"
  description = "The name given to the aws_key_pair."
}

variable "sg_id" {
  description = "value"
}

variable "subnet_id" {
  description = "value"
}