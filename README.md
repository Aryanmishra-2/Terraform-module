
# AWS VPC Terraform Module  
<img width="150" height="150" alt="image" src="https://github.com/user-attachments/assets/667b049d-a404-43b9-afb1-5e384bf77761" />

Opstree Solutions

Terraform module which creates a **complete AWS VPC setup** with public, private, and DB subnets.

---

## Resources Supported

This module creates the following AWS resources:

- VPC
- Public Subnet
- Private Subnet
- DB Subnet
- Internet Gateway (IGW)
- Elastic IP
- NAT Gateway
- Public Route Table
- Private Route Table

---

## Terraform Versions

- Terraform >= 0.12
- AWS Provider ~> 5.0

---

## Usage

```hcl
provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source = "../Terraform-module"

  vpc_name = "demo-vpc"
  vpc_cidr = "10.0.0.0/16"

  az = "ap-south-1a"

  public_subnet_cidr  = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"
  db_subnet_cidr      = "10.0.3.0/24"
}
```


##  Inputs

The following input variables are used to configure the VPC infrastructure.

| Name | Description | Type | Required |
|-----|------------|------|----------|
| `region` | AWS region where resources will be created | string | yes |
| `vpc_name` | Name of the VPC | string | yes |
| `vpc_cidr` | CIDR block for the VPC | string | yes |
| `az` | Availability Zone for all subnets | string | yes |
| `public_subnet_cidr` | CIDR block for the public subnet | string | yes |
| `private_subnet_cidr` | CIDR block for the private subnet | string | yes |
| `db_subnet_cidr` | CIDR block for the DB subnet | string | yes |



##  Outputs

The following outputs are exported after successful deployment.

| Name | Description |
|-----|------------|
| `vpc_id` | The ID of the created VPC |
| `public_subnet_id` | The ID of the public subnet |
| `private_subnet_id` | The ID of the private subnet |
| `db_subnet_id` | The ID of the DB subnet |
| `nat_gateway_id` | The ID of the NAT Gateway |


<img width="1118" height="562" alt="Screenshot from 2026-02-02 12-48-54" src="https://github.com/user-attachments/assets/fe97bf18-e78e-4272-8be2-344e6a4b661c" />



