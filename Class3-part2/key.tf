resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("~/.ssh/id_rsa.pub")

  tags = {
    Name = "Hello"
    key = "value"
  }
}

terraform {
  backend "s3" {
    bucket = "kaizen-adileta"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
