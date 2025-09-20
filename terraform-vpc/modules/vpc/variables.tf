variable "vpc_cidr" {
  description = "VPC CIDR Range"
  type        = string
}

variable "subnet_cidr" {
  description = "Subnets CIDRS"
  type        = list(string)
}

variable "subnet_names" {
  description = "Subnets Names"
  type        = list(string)
  default     = ["PublicSubnet1", "PublicSubnet2"]
}
