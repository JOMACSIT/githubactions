variable "vpc_cidr" {
  description = "VPC Cidr Block"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name of the VPC to create."
  default     = "day4VPC"
}

variable "pri-sn1-cidr" {
  description = "Private subnet 1 cidr block"
  default     = "10.0.1.0/24"
}

variable "pri-sn1-name" {
  description = "Name for private subnet 1"
  default     = "pri-sn1"
}

variable "pri-sn2-cidr" {
  description = "Private subnet 2 cidr block"
  default     = "10.0.2.0/24"
}

variable "pri-sn2-name" {
  description = "Name for private subnet 2"
  default     = "pri-sn2"
}

variable "pub-sn1-cidr" {
  description = "Public subnet 1 cidr block"
  default     = "10.0.3.0/24"
}

variable "pub-sn1-name" {
  description = "Name for public subnet 1"
  default     = "pub-sn1"
}

variable "pub-sn2-cidr" {
  description = "Public subnet 2 cidr block"
  default     = "10.0.4.0/24"
}

variable "pub-sn2-name" {
  description = "Name for public subnet 2"
  default     = "pub-sn2"
}

variable "region" {
    description = "AWS region where resources will be created" 
    default = "us-west-2"
}
