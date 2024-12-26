resource "aws_security_group" "bastion_sg" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.allowed_ip]  # Replace with your public IP or CIDR
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # All traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.bastion_name}-sg"
  }
}

resource "aws_instance" "bastion" {
  ami           = "ami-0c55b159cbfafe1f0"  # Example for Amazon Linux 2; update based on your region
  instance_type = "t2.micro"
  subnet_id     = var.public_subnet_id
  security_groups = [aws_security_group.bastion_sg.name]

  tags = {
    Name = var.bastion_name
  }
}
