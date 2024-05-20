variable "environment" {
    description = "The deployment environment for the infrastructure. Valid values are 'dev', 'stage', 'prod'"
    type        = string
    default     = "prod"
}