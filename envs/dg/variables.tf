variable "db_admin_user" {
  description = "Database admin username for DG"
  type        = string
  sensitive   = true
}

variable "db_admin_password" {
  description = "Database admin password for DG"
  type        = string
  sensitive   = true
}
