variable "region" {
  type        = string
  description = "AWS Region"
}

variable "assume_role_arn" {
  type        = string
  description = "ARN Role that Terraform assume"
}

variable "kms_key_arn" {
  type        = string
  description = "ARN of the KMS key used for encrypting the DynamoDB table"
  default     = null
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
