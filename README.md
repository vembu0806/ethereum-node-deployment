# Ethereum Node Deployment with Terraform & Ansible

This project deploys an Ethereum node on AWS using Terraform and Ansible.

## **Project Overview**
- **Terraform** provisions an Ubuntu EC2 instance with security groups.
- **Ansible** installs Geth and configures it as a systemd service.
- The Ethereum node syncs with the blockchain and exposes an HTTP API.

## **Requirements**
- AWS Account
- Terraform installed (`terraform -v`)
- Ansible installed (`ansible --version`)
- SSH Key Pair for accessing EC2

## **Setup Instructions**

### **Step 1: Clone the Repository**
```bash
git clone https://github.com/yourrepo/ethereum-node-deployment.git
cd ethereum-node-deployment

Here’s a checklist of all files I mentioned:

Terraform Files (Infrastructure as Code)
✅ terraform/main.tf – Defines EC2 instance and security groups.
✅ terraform/variables.tf – Stores Terraform variables.
✅ terraform/outputs.tf – Outputs the public IP of the instance.
✅ terraform/terraform.tfvars – Stores variable values (e.g., SSH key name).

Ansible Files (Configuration Management)
✅ ansible/playbook.yaml – Entry point to install and configure Ethereum node.
✅ ansible/roles/geth/tasks/main.yml – Tasks for installing and configuring Geth.
✅ ansible/roles/geth/handlers/main.yml – Handlers for restarting services.
✅ ansible/roles/geth/templates/geth.service.j2 – Systemd service template for Ethereum node.

Support Files
✅ inventory.ini – Stores EC2 instance details for Ansible.
✅ README.md – Project documentation.
✅ deploy.sh – Shell script to automate deployment.