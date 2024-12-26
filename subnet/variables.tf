variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "subnet_cidr_block" {
  description = "The CIDR block for the subnet"
}

variable "availability_zone" {
  description = "The availability zone to deploy resources in"
  type        = string
  default     = "eu-central-1a"
}

variable "route_table_id" {
  description = "The ID of the Route Table"
}