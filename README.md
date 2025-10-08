# Retail Store Sample App - GitOps with Amazon EKS Auto Mode
this is an automated app which will contain devsecops , terraform , docker , gitops , argocd and eks cluster 
we will make k8s file from helm
helm is a package manager

### **Required Tools**

| Tool          | Version | Installation                                                                         |
| ------------- | ------- | ------------------------------------------------------------------------------------ |
| **AWS CLI**   | v2+     | [Install Guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) |
| **Terraform** | 1.0+    | [Install Guide](https://developer.hashicorp.com/terraform/install)                   |
| **kubectl**   | 1.33+   | [Install Guide](https://kubernetes.io/docs/tasks/tools/)                             |
| **Docker**    | 20.0+   | [Install Guide](https://docs.docker.com/get-docker/)                                 |
| **Helm**      | 3.0+    | [Install Guide](https://helm.sh/docs/intro/install/)                                 |
| **Git**       | 2.0+    | [Install Guide](https://git-scm.com/downloads) 

Project Overview

The goal of this project is to build an end-to-end automated CI/CD pipeline using GitOps principles.
It integrates DevSecOps, Terraform, Docker, Helm, ArgoCD, and Amazon EKS Auto Mode to manage and secure application deployment efficiently.

Architecture Components
1.	Retail Store App — A containerized sample web app.
2.	Docker — Builds and packages app images.
3.	Terraform — Provisions AWS infrastructure and EKS cluster.
4.	Helm — Manages Kubernetes manifests as versioned charts.
5.	ArgoCD — Automates GitOps deployment to EKS.
6.	EKS Auto Mode — Dynamically manages node provisioning.
7.	DevSecOps Tools — Security scanning integrated into the CI/CD pipeline (e.g., Trivy, Checkov).
