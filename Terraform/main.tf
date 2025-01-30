provider "aws" {
  region = "eu-central-1"
}

# Vytvoření VPC 
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  name = "eks-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["eu-central-1a", "eu-central-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = false
}

# Vytvoření EKS clusteru s běžnými EC2 instancemi
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.33.1" # Použití nejnovější verze

  cluster_name    = "test-eks-cluster"
  cluster_version = "1.25"
  vpc_id          = module.vpc.vpc_id

  subnet_ids = module.vpc.private_subnets

  eks_managed_node_groups = {
    ec2_nodes = {
      desired_capacity = 1   # Počet běžících EC2 instancí v clusteru
      max_capacity     = 2   # Maximální počet instancí při autoscalingu
      min_capacity     = 1   # Minimální počet instancí

      instance_types = ["t3.small"]
      capacity_type  = "ON_DEMAND"   # Nejsou to Spot Instances
    }
  }
}

# Výstupy pro EKS
output "eks_cluster_name" {
  value = module.eks.cluster_name
}

output "eks_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "eks_node_group_arn" {
  value = module.eks.eks_managed_node_groups.ec2_nodes.node_group_arn
}

