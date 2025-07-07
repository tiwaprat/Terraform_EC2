terraform {
  backend "s3" {
    bucket = "tf-state-backend-2025"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "studentApp_host1" {
    ami = "ami-05ffe3c48a9991133"
    instance_type = "t2.micro"
    security_groups = [aws_security_group.studentApp_sg.name]

  
}