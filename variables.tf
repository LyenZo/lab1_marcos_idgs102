variable "project_name" {
  description = "The name of the project."
  type        = string

  validation {
    condition     = length(var.project_name) >= 3 && length(var.project_name) <= 20
    error_message = "Debe contener entre 3 y 20 caracteres."
  }
}

variable "environment" {
  description = "Ambiente donde se despliegan los recursos."
  type        = string

  validation {
    condition     = contains(["dev", "test", "qa", "stg", "prod"], var.environment)
    error_message = "El entorno debe ser 'dev', 'test', 'qa', 'stg' o 'prod'."
  }
}

variable "location" {
  description = "La ubicación geográfica donde se desplegarán los recursos."
  type        = string
  default     = "northcentralus" 

  validation {
    condition     = contains(["eastus", "westus", "centralus", "northeurope", "westeurope", "mexicocentral", "southcentralus", "eastus2", "northcentralus"], var.location)
    error_message = "Ubicación no válida."
  }
}

variable "vnet_address_space" {
  description = "El espacio de direcciones para la red virtual."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "tags" {
  description = "Etiquetas para los recursos."
  type        = map(string)
  default     = {
    managed_by = "Terraform"
  }
}