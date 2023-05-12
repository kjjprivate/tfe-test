terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.65.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "instance" {
  ami           = "ami-058165de3b7202099"
  instance_type = "t2.micro"
  key_name="JIN"
   tags = {
    Name = "jj-vault"
  }
}

output  "public_ips"{
  value=[
	aws_instance.instance.public_ip,
	]
}
