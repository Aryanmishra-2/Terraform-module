region = "ap-south-1"

vpc_name = "demo-vpc"
vpc_cidr = "10.0.0.0/16"

az = "ap-south-1a"

enable_dns_support   = true
enable_dns_hostnames = true

public_subnet_cidr  = "10.0.1.0/24"
private_subnet_cidr = "10.0.2.0/24"
db_subnet_cidr      = "10.0.3.0/24"

map_public_ip = true

public_route_cidr  = "0.0.0.0/0"
private_route_cidr = "0.0.0.0/0"

