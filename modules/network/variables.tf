variable "client_name" {
  type        = string
  description = "Client identifier"
}

variable "location" {
  type        = string
  description = "Azure deployment region"
}

variable "environment" {
  type        = string
  description = "Deployment environment (dev, tst, stg, prd)"
}
