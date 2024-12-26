variable "vpc_id" {
  description = "The VPC ID where the bastion host will be deployed"
  type        = string
}

variable "public_subnet_id" {
  description = "The ID of the public subnet for the bastion host"
  type        = string
}

variable "allowed_ip" {
  description = "The public IP address allowed to access the bastion host"
  type        = string
}

variable "bastion_name" {
  description = "The name for the bastion host"
  type        = string
  default     = "bastion-host"
}