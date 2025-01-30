# EKS_cluster_AWS_via_Terraform

# 🚀 AWS EKS Cluster Deployment with Terraform

This project provides an **automated way to deploy an AWS EKS (Elastic Kubernetes Service) cluster** using **Terraform**. It includes a scalable Kubernetes cluster with EC2 worker nodes, networking (VPC, subnets), and a sample application running on **Apache**.

![AWS EKS Architecture](https://docs.aws.amazon.com/architecture-diagrams/latest/opentext-infoarchive-architecture-using-amazon-eks/opentext-infoarchive-architecture-using-amazon-eks.html)  

---

## 📌 Features
✅ **Automated AWS EKS Deployment** – Deploys a fully functional EKS cluster  
✅ **Terraform Infrastructure as Code (IaC)** – Simplifies and automates setup  
✅ **EC2 Managed Node Group** – Kubernetes worker nodes (t3.micro, Free Tier eligible)  
✅ **Load Balancer & Public Access** – Exposes an Apache web server via AWS LoadBalancer  
✅ **Scalability** – Kubernetes-managed scaling with multiple EC2 nodes  

---

## 🚀 Deployment Guide

### 1️⃣ Prerequisites
Before running this Terraform script, make sure you have:
- ✅ **AWS CLI** installed and configured (`aws configure`)
- ✅ **Terraform** installed (`terraform --version`)
- ✅ **kubectl** installed for managing Kubernetes (`kubectl version`)

---

### 2️⃣ Setup & Deploy

#### **Step 1: Clone the repository**
```bash
git clone https://github.com/PajaspaceNet/EKS_cluster_AWS_via_Terraform.git
cd EKS_cluster_AWS_via_Terraform
```
---
3️⃣ Connect to EKS Cluster

Once deployment is complete, update your Kubernetes config:
```
aws eks update-kubeconfig --region eu-central-1 --name test-eks-cluster

Verify nodes are running:

kubectl get nodes
```

4️⃣ Deploy an Apache Web Server
Step 1: Apply Kubernetes Deployment
```
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```
Step 2: Get the Public IP
```
kubectl get svc apache-service
```
Copy the EXTERNAL-IP and open it in your browser:
```
http://<EXTERNAL-IP>
```
🎉 You should see the Apache web server running!


 ## How to Destroy Everything

To delete the entire AWS infrastructure, run:

```
terraform destroy
```
This will remove the EKS cluster, EC2 instances, and networking to avoid any charges.

 ## Author & Contributions

    👨‍💻 Created by Pavel
    🛠 Open-source contributions are welcome! Feel free to fork & improve.

🔹 If you like this project, don’t forget to ⭐ it on GitHub! 


###  NEXT ToDo...

🔥 Future Improvements

📌 Add CI/CD pipeline for automatic deployments
📌 Implement Ingress with HTTPS (Let’s Encrypt)
📌 Deploy a real application instead of Apache

