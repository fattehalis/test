provider "aws" {
  region = "us-east-1"
  
   
}

resource "aws_instance" "test" {
  ami               = "ami-08d4ac5b634553e16"
  availability_zone = "us-east-1a"
  instance_type     = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
