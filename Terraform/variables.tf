variable "region" {
  default = "eu-central-1"
}

variable "cluster_name" {
  default = "test-eks-cluster"
}
variable "azs" {
  description = "List of Availability Zones in the region"
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b"]
}
