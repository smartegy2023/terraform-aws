provider "aws" {
region = var.region
}

module "vpc" {
source = "./vpc"
vpc_name = var.vpc_name
vpc_cidr_block = var.vpc_cidr_block
vpc_availability_zones = var.vpc_availability_zones
vpc_public_subnets = var.vpc_public_subnets
vpc_private_subnets = var.vpc_private_subnets
vpc_enable_nat_gateway = var.vpc_enable_nat_gateway
vpc_single_nat_gateway = var.vpc_single_nat_gateway
}

module "security_group" {
source = "./security_group"
vpc_id = module.vpc.vpc_id
}

module "iam" {
source = "./iam"
}

module "eks" {
source = "./eks"
cluster_name = "upvela-eks-cluster"
cluster_role_arn = module.iam.eks_cluster_role_arn
node_group_name = "test-node-group"
node_role_arn = module.iam.eks_node_role_arn
subnet_ids = module.vpc.private_subnet_ids
desired_size = 2
max_size = 2
min_size = 1
instance_type = "t3.medium"
cluster_security_group_id = module.security_group.eks_cluster_sg_id
node_security_group_id = module.security_group.eks_node_sg_id
ec2_ssh_key = var.ec2_ssh_key
}