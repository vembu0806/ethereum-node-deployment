output "public_ip" {
  description = "The public IP address of the Ethereum node"
  value       = aws_instance.ethereum.public_ip
}

output "private_ip" {
  description = "The private IP address of the Ethereum node"
  value       = aws_instance.ethereum.private_ip
}

output "ssh_command" {
  description = "SSH command to connect to the Ethereum node"
  value       = "ssh -i ~/.ssh/my-aws-key.pem ubuntu@${aws_instance.ethereum.public_ip}"
}
