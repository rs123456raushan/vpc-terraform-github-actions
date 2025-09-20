# ------------------------
# Security Group for Web Server
# ------------------------
resource "aws_security_group" "sg" {
  name        = "sg" # Name of the SG
  description = "Allow HTTP, SSH inbound traffic"
  vpc_id      = var.vpc_id # Attach SG to your VPC

  # Ingress Rules (inbound traffic)
  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow HTTP from anywhere
  }

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow SSH from anywhere (not safe for production)
  }

  # Egress Rules (outbound traffic)
  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"          # -1 = all protocols
    cidr_blocks = ["0.0.0.0/0"] # Allow outbound to anywhere
  }

  tags = {
    Name = "MySecurityGroup"
  }
}
