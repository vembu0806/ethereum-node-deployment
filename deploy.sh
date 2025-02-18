#!/bin/bash

echo "Starting Ethereum Node Deployment..."

# Step 1: Deploy Infrastructure
cd terraform
terraform init
terraform apply -auto-approve
cd ..

# Step 2: Get Public IP from Terraform Output
PUBLIC_IP=$(terraform output -raw public_ip)
echo "[ethereum]" > inventory.ini
echo "$PUBLIC_IP ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/my-aws-key.pem" >> inventory.ini

# Step 3: Run Ansible Playbook
ansible-playbook -i inventory.ini ansible/playbook.yaml

echo "Ethereum Node Deployment Completed!"
