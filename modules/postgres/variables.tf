variable "postgres_name" {
  type        = string
  description = "The name of the PostgreSQL flexible server"
}

variable "location" {
  type        = string
  description = "The Azure region where the resources will be created"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "db_admin_user" {
  type        = string
  description = "The administrator username for the PostgreSQL server"
}

variable "db_admin_password" {
  type        = string
  sensitive   = true
  description = "The administrator password for the PostgreSQL server"
}

variable "sku_name" {
  type        = string
  default     = "Standard_B1ms"
  description = "The SKU name for the PostgreSQL server"
}

variable "storage_mb" {
  type        = number
  default     = 32768
  description = "The max storage size in MB for the PostgreSQL server"
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet to delegate to the PostgreSQL server"
}

variable "private_dns_zone_id" {
  type        = string
  default     = null
  description = "Optional: The ID of the private DNS zone. Use null to disable linking"
}
