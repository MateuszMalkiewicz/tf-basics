# variable "" {
# type        = any
# default     = ""
# description = ""
# }

variable "environment" {
  type        = string
  default     = "skillup"
  description = "Environment name"
}

variable "region" {
  type        = string
  default     = "eu-central-1"
  description = "The region used for creating AWS resources"
}

variable "ami_id" {
  type        = string
  default     = "ami-0a1ee2fb28fe05df3"
  description = "The AMI ID to use when creating EC2 instance"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "CIDR block of the vpc"
}

variable "public_subnets" {
  type        = list(any)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  description = "CIDR block for Public Subnet"
}

variable "private_subnets" {
  type        = list(any)
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  description = "CIDR block for Private Subnet"
}

variable "availability_zones" {
  type        = list(any)
  default     = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
  description = "List of Availability Zones (e.g. ['eu-central-1a', 'eu-central-1b', 'eu-central-1c'])"
}
