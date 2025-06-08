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
