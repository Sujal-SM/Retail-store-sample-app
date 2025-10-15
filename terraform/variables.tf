variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "ap-south-1"

}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "retail-app-cluster"

}

variable "region" {
  description = "Region for aws provider"
  type        = string
  default     = "ap-south-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "environment" {
  description = "Environment tag for resources"
  type        = string
  default     = "dev"
}

variable "kubernetes_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
  default     = "1.30"

}

variable "single_nat_gateway_enabled" {
  description = "Enable single NAT Gateway for the VPC"
  type        = bool
  default     = true

}

variable "cidr_blocks" {
  description = "values for cidr blocks"
  type        = string
  default     = "0.0.0.0/0"
}

variable "enable_monitoring" {
  description = "Enable monitoring for the EKS cluster"
  type        = bool
  default     = true
}

variable "argocd_namespace" {
  description = "Namespace to install ArgoCD"
  type        = string
  default     = "argocd"
}


variable "argocd_chart_version" {
  description = "ArgoCD Helm chart version"
  type        = string
  default     = "5.51.6"
}
