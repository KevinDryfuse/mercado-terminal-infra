variable "location" {
  type        = string
  default     = "eastus"
  description = "Azure deployment region"
}

variable "client_name" {
  type        = string
  default     = "dg"
  description = "Client identifier"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "Deployment environment (dev, tst, stg, prd)"
}
