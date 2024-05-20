# terraform provider
provider "aws" {
    region = "us-east-1"
}

# terraform state backend
terraform {
  backend "s3" {
    key = "prod/networking/terraform.tfstate"
    #make sure the s3 bucket create before using this
    bucket = "scw-tf-state1"
    region = "us-east-1"
    encrypt = true
  }
}

# local variables
locals {
    #It must be a random suffix to avoid conflicts with existing resources
    name_suffix = random_id.main.hex
}

# random id
resource "random_id" "main" {
    byte_length = 4 
}

# vpc
module "vpc" {
    source = "../../../modules/vpc"
    name = "vpc-${local.name_suffix}"
    environment = var.environment
    cidr_block = "10.200.0.0/16"
    enable_flow_log = false
    #loggingBucket = data.terraform_remote_state.s3_logging.outputs.logging-bucket-principal

    az_public_subnet = {
        us-east-1a = "10.200.1.0/24"
        us-east-1b = "10.200.2.0/24"
        us-east-1c = "10.200.3.0/24"
    }

    az_private_subnet = {
        us-east-1a = "10.200.10.0/24"
        us-east-1b = "10.200.20.0/24"
        us-east-1c = "10.200.30.0/24"
    }


}