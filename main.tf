provider "aws" {
  region = "us-east-1"
  access_key = "AKIARETDG7XKKDBNPOXU"
  secret_key = "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"
   
}

resource "aws_instance" "test" {
  ami               = "ami-08d4ac5b634553e16"
  availability_zone = "us-east-1a"
  instance_type     = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
