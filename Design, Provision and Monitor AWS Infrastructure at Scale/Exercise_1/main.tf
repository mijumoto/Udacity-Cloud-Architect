# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}


# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity-T2" {
  ami           = "ami-0ff8a91507f77f867" # Amazon Linux 2 AMI (HVM), SSD
  instance_type = "t2.micro"
  count         = 4
  tags = {
    Name = "Udacity T2"
  }
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4

resource "aws_instance" "Udacity-M4" {
  ami           = "ami-0ff8a91507f77f867" # Amazon Linux 2 AMI (HVM), SSD
  instance_type = "m4.large"
  count         = 2
  tags = {
    Name = "Udacity-M4"
  }
}
