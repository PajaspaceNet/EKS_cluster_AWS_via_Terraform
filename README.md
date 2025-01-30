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

###  NEXT ToDo...

