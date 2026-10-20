variable "tags" {
  description = "Required environment, managed_by, and owner tags applied explicitly to all module resources that support tagging"
  type = object({
    environment = string
    managed_by  = string
    owner       = string
  })
  nullable = false

  validation {
    condition     = alltrue([for value in values(var.tags) : value == null ? false : length(trimspace(value)) > 0])
    error_message = "environment, managed_by, and owner must all have nonempty tag values."
  }
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
