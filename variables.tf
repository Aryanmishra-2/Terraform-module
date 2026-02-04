variable "region" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "az" {
  type = string
}

variable "enable_dns_support" {
  type = bool
}

variable "enable_dns_hostnames" {
  type = bool
}

variable "public_subnet_cidr" {
  type = string
}

variable "private_subnet_cidr" {
  type = string
}

variable "db_subnet_cidr" {
  type = string
}

variable "map_public_ip" {
  type = bool
}

variable "public_route_cidr" {
  type = string
}

variable "private_route_cidr" {
  type = string
}

