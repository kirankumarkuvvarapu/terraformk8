#VPC outputs
output "vpc_id" {
    description = "The ID of the VPC"
    value       = module.vpc.vpc_id
}

#Subnet outputs
output "public_subnet" {
    description = "List of public subnetIDs"
    value = module.vpc.public_subnet
}

#subnet outputs
output "private_subnet" {
    description = "List of private subnetIDs"
    value = module.vpc.private_subnets
}