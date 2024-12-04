variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
  default     = "my-vnet"
}

variable "location" {
  description = "Azure region where the VNet will be created"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "myresourcegroup"
}

variable "address_space" {
  description = "Address space for the VNet"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnets" {
  description = "List of subnets to create"
  type = list(object({
    name                       = string
    address_prefixes           = list(string)
    private_endpoint_policies  = bool
  }))
  default = [  # The default must match the structure defined in the type
    {
      name                      = "subnet-a"
      address_prefixes          = ["10.0.1.0/24"]
      private_endpoint_policies = false
    }
 ]
 
}

variable "tags" {
  description = "Tags to associate with resources"
  type        = map(string)
  default     = {
    environment = "production"
    project     = "my-project"
  }
}
