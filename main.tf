resource "aws_security_group" "sg" {
  name = "${var.name}"
  description = "Security Group ${var.name}"
  vpc_id = "${var.vpc_id}"

  // Allow traffic for TCP 22
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  tags {
    Name = "${var.name}"
    Owner = "${var.owner}"
  }
}