# terraform provider
terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.0"
    }
    random = {
        source = "hashicorp/random"
        version = "~> 3.1.0"
    }
    tls = {
        source = "hashicorp/tls"
        version = "~> 4.0.4"
    }
    cloudinit = {
        source = "hashicorp/cloudinit"
        version = "~> 2.2.0"
    }
    kubernetes = {
        source = "hashicorp/kubernetes"
        version = "~> 2.10.0"
    }
  }
  required_version = ">= 1.0.0"
}
