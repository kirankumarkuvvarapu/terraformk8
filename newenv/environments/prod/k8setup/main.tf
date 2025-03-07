# terraform provider
provider "kubernetes" {
  host = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)

}
# terraform state backend
provider "aws" {
    region = var.region
  
}

# random id
data "aws_availability_zones" "available" {}

locals {
  cluster_name = "'eks-${random_string.suffix.result}'"
}


resource "random_string" "suffix" {
  length = 8
  special = false
}