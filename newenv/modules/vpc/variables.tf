variable "cidr_block" {
    description = "The CIDR block for the VPC must be in form x.x.x.x/16-28"
    type = string
  
}

variable "name" {
    description = "Name to be used as identifier on all resources"
    type = string
  
}

variable "environment" {
    description = "specify the environment type (dev, stage, prod)"
    type = string
    default = "prod"
}

variable "loggingBucket" {
  description = "Bucket ARN to send VPC flow logs"
  type = string
  default = ""
}

variable "az_public_subnet" {
  description = "Mapping AZ to public subnet"
  type = map(string)
}

variable "az_private_subnet" {
  description = "Mapping AZ to private subnet"
  type = map(string)
}

variable "enable_flow_log" {
  description = "True if VPC flow logs should be enabled"
  type = bool
}
