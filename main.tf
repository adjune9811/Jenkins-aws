/*
provider "aws" {

    region = "ap-south-1"
  
}

*/
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.36.0"
    }
  }
}



provider "aws" {
  region = "ap-south-1" # Specify your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0db8668351b9977cf" # Specify the AMI ID of the EC2 instance
  instance_type = "t2.micro"               # Specify the instance type
  key_name      = "Jenkins-Server"            # Specify the key pair name for SSH access

  tags = {
    Name = "ExampleInstance"               # Specify a name tag for the instance
  }
}
