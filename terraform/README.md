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

## Deployment Order

**Important**: Deploy infrastructure in this specific order:

1. **VPC** - Network foundation
2. **EKS Cluster** - Kubernetes cluster
3. **Add-ons & Applications** - ArgoCD, monitoring, etc.

## Terraform Commands

### 1. Initialize Terraform
```bash
terraform init
```

### 2. Validate Configuration
```bash
terraform validate
```

### 3. Format Code
```bash
terraform fmt
```

### 4. Plan Deployment
```bash
# Review what will be created
terraform plan
```

### 5. Apply Infrastructure
```bash
# Apply all resources
terraform apply

# Auto-approve (skip confirmation)
terraform apply -auto-approve
```

### 6. Target Specific Resources
```bash
# Deploy only VPC
terraform apply -target=module.vpc

# Deploy only EKS
terraform apply -target=module.eks
```

### 7. View State
```bash
# List all resources
terraform state list

# Show specific resource
terraform state show aws_vpc.main
```

### 8. Import Existing Resources
```bash
terraform import aws_vpc.main vpc-12345678
```

### 9. Refresh State
```bash
terraform refresh
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

### Destroy Infrastructure
```bash
# Destroy all resources
terraform destroy

# Destroy specific resources
terraform destroy -target=module.eks

# Auto-approve destruction
terraform destroy -auto-approve
```

### Remove State
```bash
# Remove resource from state (without destroying)
terraform state rm aws_instance.example
```

