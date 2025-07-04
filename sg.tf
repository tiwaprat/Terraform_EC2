resource "aws_security_group" "studentApp_sg" {
  name        = "studentApp_sg"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "studentApp_sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "studentApp_sg_ipv4" {
  security_group_id = aws_security_group.studentApp_sg.id
  cidr_ipv4         = aws_vpc.main.cidr_block
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}
