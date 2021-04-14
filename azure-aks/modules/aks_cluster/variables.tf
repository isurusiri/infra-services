variable "dns_prefix" {
  description = "DNS prefix"
}

variable "location" {
  description = "azure location to deploy resources"
}

variable "cluster_name" {
  description = "AKS cluster name"
}

variable "resource_group_name" {
  description = "name of the resource group to deploy AKS cluster in"
}

variable "kubernetes_version" {
  description = "name of the resource group to deploy AKS cluster in"
}

variable "api_server_authorized_ip_ranged" {
  default     = "0.0.0.0/0"
  description = "ip ranges to lock down access to kubernetes api server"
}

# Node Pool config
variable "agent_pool_name" {
  description = "name for the agent pool profile"
  default     = "default"
}

variable "agent_pool_type" {
  description = "type of the agent pool (AvailabilitySet and VirtualMachineScaleSets)"
  default     = "AvailabilitySet"
}

variable "node_count" {
  description = "number of nodes to deploy"
}

variable "vm_size" {
  description = "size/type of VM to use for nodes"
}


variable "os_disk_size_gb" {
  description = "size of the OS disk to attach to the nodes"
}

variable "vnet_subnet_id" {
  description = "vnet id where the nodes will be deployed"
}

variable "max_pods" {
  description = "maximum number of pods that can run on a single node"
}

# Network profile config
variable "network_plugin" {
  default     = "azure"
  description = "network plugin for kubernetes network overlay (azure or calico)"
}

variable "service_cidr" {
  default     = "10.0.0.0/16"
  description = "kubernetes internal service cidr range"
}

variable "diagnostics_workspace_id" {
  description = "log analytics workspace id for cluster audit"
}

variable "client_id" {
}

variable "client_secret" {
}

variable "min_count" {
  default     = 1
  description = "minimum node count"
}

variable "max_count" {
  default     = 5
  description = "maximum node count"
}

variable "default_pool_name" {
  default     = "default"
  description = "name for the agent pool profile"
}

variable "default_pool_type" {
  default     = "VirtualMachineScaleSets"
  description = "type of the agent pool (AvaialbilitySet and VirtualMachineScaleSets)"
}
