variable "location" {
    type = string
    description = "Region de Azure donde crearemos la infraestructura"
    default = "North Central US"

}

variable "vm_size" {
    type = string
    description = "Tamaño de la maquina virtual"
    default = "Standard_D1_V2" # 3.5 GB, 1 CPU
}   

variable "vms"{
    description = "Maquinas virutales a crear"
    type        = list(string)
    default     = ["master","worker01","worker02","nfs"]
}

variable "azureid" {
  description = "AzureID"
  type        = string
  sensitive   = true
}