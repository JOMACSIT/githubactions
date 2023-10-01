variable "vpc_cidr" {
  description = "VPC Cidr Block"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name of the VPC to create."
  default     = "jomacs-ce-usw2-vpc"
}

variable "subnet_private1-cidr" {
  description = "Private subnet 1 cidr block"
  default     = "10.0.1.0/24"
}

variable "subnet_private1-name" {
  description = "Name for private subnet 1"
  default     = "subnet_private1"
}

variable "subnet_private2-cidr" {
  description = "Private subnet 2 cidr block"
  default     = "10.0.2.0/24"
}

variable "subnet_private2-name" {
  description = "Name for private subnet 2"
  default     = "subnet_private2"
}

variable "subnet_public1-cidr" {
  description = "Public subnet 1 cidr block"
  default     = "10.0.3.0/24"
}

variable "subnet_public1-name" {
  description = "Name for public subnet 1"
  default     = "subnet_public1"
}

variable "subnet_public2-cidr" {
  description = "Public subnet 2 cidr block"
  default     = "10.0.4.0/24"
}

variable "subnet_public2-name" {
  description = "Name for public subnet 2"
  default     = "subnet_public2"
}

variable "region" {
  description = "AWS region where resources will be created"
  default     = "us-west-2"
}
