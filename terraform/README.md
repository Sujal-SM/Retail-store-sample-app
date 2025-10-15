# Terraform Infrastructure

This directory contains Terraform configurations for deploying a retail application infrastructure on AWS.

## File Structure

```
terraform/
├── main.tf              # Main infrastructure resources (VPC, EKS)
├── variables.tf         # Input variables
├── outputs.tf           # Output values
├── versions.tf          # Provider version constraints
├── provider.tf          # Provider configurations
├── locals.tf            # Local values and computed data
├── addons.tf            # EKS add-ons configuration
├── argocd.tf            # ArgoCD deployment
├── security.tf          # Security groups and policies
└── .terraform.lock.hcl  # Provider version lock file
```

## Architecture

- **VPC**: Custom VPC with public/private subnets across multiple AZs
- **EKS Cluster**: Managed Kubernetes cluster with Auto Mode
- **Add-ons**: ArgoCD, monitoring, autoscaling, and security tools

## Prerequisites

- Terraform >= 1.0
- AWS CLI configured
- kubectl installed

## Quick Start

```bash
# Initialize Terraform
terraform init

# Plan deployment
terraform plan

# Apply infrastructure
terraform apply
```

## Configuration

Key variables in `variables.tf`:
- `aws_region`: AWS region (default: ap-south-1)
- `cluster_name`: EKS cluster name
- `kubernetes_version`: K8s version (default: 1.30)
- `vpc_cidr`: VPC CIDR block

## Outputs

- VPC ID and subnet information
- EKS cluster endpoint and certificate
- ArgoCD access details

## Clean Up

```bash
terraform destroy
```