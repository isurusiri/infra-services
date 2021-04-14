variable "client_id" {
}

variable "client_secret" {
}

variable "node_count" {
    description = "number of nodes to deploy"
    default = 2
}

variable "dns_prefix" {
  default     = "defaultaks"
  description = "DNS prefix"
}

variable "cluster_name" {
    description = "AKS cluster name"
    default = "defaultaks"
}

variable "resource_group_name" {
    description = "name of the resource group to deploy AKS cluster in"
    default = "defaultaks"
}

variable "location" {
    description = "azure location to deploy resources"
    default = "westeurope"
}

variable "log_analytics_workspace_name" {
  default     = "log_analytics_workspace_default"
}

variable log_analytics_workspace_location {
  default = "eastus"
}

variable log_analytics_workspace_sku {
  default = "PerGB2018"
}

variable "subnet_name" {
  default     = "defaultaks-subnet"
  description = "subnet to deploy nodes"
}

variable "vnet_name" {
  default     = "defaultaks-vnet"
  description = "vnet where the nodes will be deployed"
}

variable "subnet_cidr" {
  default     = "10.2.32.0/21"
  description = "the subnet cidr tange"
}

variable "kubernetes_version" {
    description = "version of the kubernetes cluster"
    default = "1.18.10"
}

variable "vm_size" {
    description = "size/type of VM to use for nodes"
    default = "Standard_D2_v2"
}

variable "os_disk_size_gb" {
    description = "size of the OS disk to attach to the nodes"
    default = 512
}

variable "max_pods" {
  default     = "100"
  description = "maximum number of pods that can run on a single node"
}

variable "address_space" {
    default = "10.2.0.0/16"
    description = "the address space that is used the virtual network"
}

variable "min_count" {
    default = 1
    description = "minimum node count"
}

variable "max_count" {
    default = 1
    description = "maximum node count"
}