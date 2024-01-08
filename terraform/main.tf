provider "aws" {
region = "us-east-1"
access_key = "AKIAYTTNYJL2OIZ53S4L"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-00b8917ae86a424c9"
instance_type = "t2.micro"
key_name = "mykey"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "terraform"
Environment = "dev"
}
}
