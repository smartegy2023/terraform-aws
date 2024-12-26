variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "cluster_role_arn" {
  description = "The ARN of the IAM role for the EKS cluster"
  type        = string
}

variable "node_group_name" {
  description = "The name of the EKS node group"
  type        = string
}

variable "node_role_arn" {
  description = "The ARN of the IAM role for the EKS node group"
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the EKS cluster"
  type        = list(string)
}

variable "desired_size" {
  description = "The desired number of nodes in the node group"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "The maximum number of nodes in the node group"
  type        = number
  default     = 3
}

variable "min_size" {
  description = "The minimum number of nodes in the node group"
  type        = number
  default     = 1
}

variable "instance_type" {
  description = "The instance type for the EKS node group"
  type        = string
  default     = "t3.medium"
}

variable "cluster_security_group_id" {
  description = "The ID of the security group for the EKS cluster"
  type        = string
}

variable "node_security_group_id" {
  description = "The ID of the security group for the EKS nodes"
  type        = string
}

variable "ec2_ssh_key" {
  description = "The SSH key for accessing the EC2 instances"
  type        = string
}