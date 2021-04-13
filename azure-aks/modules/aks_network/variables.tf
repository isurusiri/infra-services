variable "subnet_name" {
  default     = "default-subnet"
  description = "name of the subnet"
}

variable "resource_group_name" {
  default     = "resource_group_default"
  description = "resource group of the vnet"
}

variable "vnet_name" {
  default     = "vent_default"
  description = "name of the vnet that the subnet will be associated"
}

variable "subnet_cidr" {
  description = "the subnet cidr range"
}

variable "location" {
  description = "location of the vent"
}

variable "address_space" {
  description = "network address space"
}
