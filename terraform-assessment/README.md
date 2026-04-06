# TechCorp AWS Infrastructure — Month 1 Assessment

## What This Does
Deploys a complete AWS web application infrastructure using Terraform including VPC, subnets, load balancer, bastion host, web servers, and a PostgreSQL database server.

## Prerequisites
- AWS account with admin access
- Terraform installed
- AWS CLI configured (`aws configure`)
- An EC2 Key Pair created in your AWS account

## How to Deploy
1. Clone this repository
2. Copy the example vars file: `cp terraform.tfvars.example terraform.tfvars`
3. Edit `terraform.tfvars` with your key pair name and your IP address
4. Run `terraform init`
5. Run `terraform plan`
6. Run `terraform apply` and type yes when prompted

## How to Destroy (removes all resources and stops billing)
Run `terraform destroy` and type yes when prompted

## Outputs
After deploy you will see:
- VPC ID
- Load Balancer DNS name (paste into browser to see web page)
- Bastion public IP (use this to SSH in)# month-one-assessment
