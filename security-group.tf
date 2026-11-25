
resource "aws_security_group" "blinkit_sg" {
  name        = "blinkit-security-group"
  description = "Allow SSH and HTTP traffic"
  vpc_id      = aws_vpc.blinkit_vpc.id

  ingress {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["152.59.87.80/32"]
  }
  ingress {
    description = "HTTP access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name = "blinkit-security-group"
  }
}
