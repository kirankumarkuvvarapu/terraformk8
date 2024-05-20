#eks module used to create EKS cluster
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.13.1"
# cluster inputs
  cluster_name    = "mycluster"
  cluster_version = "1.29"
# VPC inputs
  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
  cluster_endpoint_public_access = true

  eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"

  }
# eks managed node group
  eks_managed_node_groups = {
    one = {
      name = "node-group-1"

      instance_types = ["m5.large"]

      min_size     = 1
      max_size     = 3
      desired_size = 2
    }

    two = {
      name = "node-group-2"

      instance_types = ["m5.large"]

      min_size     = 1
      max_size     = 2
      desired_size = 1
    }
  }
}
