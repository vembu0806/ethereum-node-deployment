provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ethereum_node" {
  ami           = "ami-0c55b159cbfafe1f0" # Ubuntu 22.04
  instance_type = "t2.micro"
  key_name      = var.key_name
  security_groups = ["ethereum-sg"]

  tags = {
    Name = "EthereumNode"
  }
}

resource "aws_security_group" "ethereum_sg" {
  name        = "ethereum-sg"
  description = "Allow Ethereum and SSH"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 30303
    to_port     = 30303
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "public_ip" {
  value = aws_instance.ethereum_node.public_ip
}
