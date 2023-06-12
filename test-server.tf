terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0" # test comment
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro" # another comment

  tags = {
    Name        = "ExampleAppServerInstance" # Just the Name tag
    Description = "temp"                     # temporary ones are the best ones
  }
}
