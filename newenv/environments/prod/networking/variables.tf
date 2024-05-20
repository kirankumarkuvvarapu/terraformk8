variable "environment" {
    description = "The deployment environment for the infrastructure. Valid values are 'dev', 'stage', 'prod'"
    type        = string
    default     = "prod"

    validation {
        condition = contains(["dev", "stage", "prod"], var.environment)
        error_message = "The environment value is incorrect. Allowed values are : dev, stage, prod"
    }
}

