output "vpc_id" {
  description = "The ID of the VPC"
  value = aws_vpc.this.id
}

output "public_subnet" {
    description = "List of public subnetIDs"
    value = values(aws_subnet.public)[*].id
  
}

output "private_subnets" {
  description = "List of private subnetIDs"
  value = values(aws_subnet.private)[*].id
}

output "nat_gateways_private_ips" {
  description = "List of NAT Gateways private IDs"
  value = values(aws_nat_gateway.public)[*].private_ip
}