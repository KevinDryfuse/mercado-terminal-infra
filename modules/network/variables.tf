variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "The Azure region to deploy into"
}

variable "vnet_name" {
  type        = string
  description = "The name of the Virtual Network"
}

variable "address_space" {
  type        = list(string)
  default     = ["10.0.0.0/16"]
  description = "The address space for the virtual network"
}

variable "apps_subnet_name" {
  type        = string
  default     = "apps-subnet"
  description = "Name for the application subnet"
}

variable "apps_subnet_prefix" {
  type        = string
  default     = "10.0.1.0/24"
  description = "CIDR prefix for the application subnet"
}

variable "db_subnet_name" {
  type        = string
  default     = "db-subnet"
  description = "Name for the database subnet"
}

variable "db_subnet_prefix" {
  type        = string
  default     = "10.0.2.0/24"
  description = "CIDR prefix for the database subnet"
}
