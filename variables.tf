variable "region" {
  type        = string
  description = "AWS Region"
}

variable "assume_role_arn" {
  type        = string
  description = "ARN Role that Terraform assume"
}

variable "waypoint_application" {
  type        = string
  description = "Name of the application"
  validation {
    condition     = can(regex("^[a-z][a-z0-9-]*$", var.waypoint_application))
    error_message = "The waypoint_application variable must start with a lowercase letter and can only contain lowercase letters, numbers, and hyphens (-)."
  }
}

variable "app_role_name" {
  type        = string
  description = "Role name to attache the new DynamoDB policy"
}

variable "table_name" {
  type        = string
  description = "DynamoDB table name"
}

variable "table_hash_key" {
  type        = string
  description = "Hash key for the table"
}