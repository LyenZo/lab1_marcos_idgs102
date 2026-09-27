variable "length" {
  description = "The length of the string"
  type        = number
  default    = 5
}

variable "application_name" {
  description = "The name of the application"
  type        = string
  default     = "integradora"
}

variable "environment" {
  description = "The environment name"
  type        = string
  default     = "dev"
}

variable "enable_monitoring" {
  description = "Enable monitoring for the application"
  type        = bool
  default     = true
}

variable "regions" {
  description = "List of regions to deploy the application"
  type        = list(string)
  default     = ["us-east-1", "us-west-2"]
}

variable "enviroment_tags" {
  description = "Tags for the environment"
  type        = map(string)
  default     = {
    dev       = "Development"
    prod = "Production"
  }
}

variable "application_config" {
  description = "Configuration for the application"
  type        = object({
    version = string
    maintainer = string
    dependencies = list(string)
  })
  default     = {
    version = "1.0.0"
    maintainer = "John Doe"
    dependencies = ["dependency1", "dependency2"]
  }
}

variable "allowed_networks" {
  description = "Lista de redes permitidas para acceder a la aplicación"
  type        = list(string)
  default     = ["10.0.0.0/16","10.1.0.0/16"]

}