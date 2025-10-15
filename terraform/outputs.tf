output "cluster_name" {
  description = "Name of the EKS cluster"
  value       = module.retail_app_eks.cluster_name
}

output "cluster_name_base" {
  description = "Base cluster name without suffix"
  value= var.cluster_name
}

output "cluster_name_suffix" {
  description = "Random suffix added to cluster name"
  value       = random_string.suffix.result
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.retail_app_eks.cluster_endpoint
}

output "cluster_version" {
  description = "Version of cluster"
  value = module.retail_app_eks.cluster_version
}

output "cluster_security_group_id" {
  description = "Security group ID attached to the EKS cluster"
  value       = module.retail_app_eks.cluster_security_group_id
}

output "cluster_oidc_issuer_url" {
  description = "The URL on the EKS cluster for the OpenID Connect identity provider"
  value       = module.retail_app_eks.cluster_oidc_issuer_url
}

output "vpc_id" {
  description = "ID of the VPC where the cluster is deployed"
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}


# =============================================================================     
# Access Information
# =============================================================================

output "configure_kubectl_command" {
  description = "Command to configure kubectl to access the EKS cluster"
  value       = "aws eks --region ${var.region} update-kubeconfig --name ${module.retail_app_eks.cluster_name}"
}

output "argocd_namespace" {
    description = "Namespace where argocd is"
    value = var.argocd_namespace    
}

output "argocd_access_command" {
    description = "Command to access argocd UI"
    value = "kubectl port-forward svc/argocd-server -n ${var.argocd_namespace}  8080:443"
}

output "argocd_initial_admin_password_command" {
    description = "Command to get initial admin password for argocd"
    value = "kubectl -n ${var.argocd_namespace} get secret argocd-initial-admin-secret -o jsonpath=\"{.data.password}\" | base64 -d; echo"
}

#APPLICATION ACCESS
