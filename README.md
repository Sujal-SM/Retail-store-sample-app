# Retail Store Sample App - GitOps with Amazon EKS Auto Mode
This project demonstrates a Retail Store microservices application deployed on Amazon EKS (Elastic Kubernetes Service) using a DevSecOps + GitOps pipeline.
The infrastructure is fully automated with Terraform, and application delivery is handled through ArgoCD using Helm charts for Kubernetes manifests and manifest files.



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

💡 This is an automated application integrating DevSecOps, Terraform, Docker, GitOps, ArgoCD, and EKS Cluster.
Kubernetes manifests will be generated using Helm, which acts as a package manager for Kubernetes.

🧑‍💻 Author

👤 Sujal Malhotra
