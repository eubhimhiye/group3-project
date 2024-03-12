


# EKS Cluster Input Variables
variable "cluster_name" {
  type        = string
  default     = "eksdemo"
}

variable "cluster_service_ipv4_cidr" {
  type        = string
  default     = "172.20.0.0/16"
}

variable "cluster_version" {
  type = string
  default     = "1.29"
}
variable "cluster_endpoint_private_access" {
  type        = bool
  default     = false
}

variable "cluster_endpoint_public_access" {
  type        = bool
  default     = true
}

variable "cluster_endpoint_public_access_cidrs" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "vpc_public_subnets" {
  type = list(string)
  default = ["10.0.4.0/24", "10.0.5.0/24"]
}

# VPC Private Subnets
variable "vpc_private_subnets" {
  type = list(string)
  default = ["10.0.2.0/24", "10.0.3.0/24"]
}
