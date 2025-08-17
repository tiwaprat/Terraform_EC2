provider "aws" {
    region = "us-east-2"
  
}

resource "aws_instance" "server1" {
    instance_type = "t2-micro"
    ami = "mi-0de716d6197524dd9"
  
}
