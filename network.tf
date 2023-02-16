resource "aws_vpc" "vorx_vpc_prod" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "Vorx-PROD"
  }
}


resource "aws_subnet" "vorx-subnet-pub-1a" {
  vpc_id     = aws_vpc.vorx_vpc_prod.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Public-Subnet-1a"
  }
}

resource "aws_subnet" "vorx-subnet-pub-1b" {
  vpc_id     = aws_vpc.vorx_vpc_prod.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "Public-Subnet-1b"
  }
}


resource "aws_subnet" "vorx-subnet-priv-1a" {
  vpc_id     = aws_vpc.vorx_vpc_prod.id
  cidr_block = "10.0.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Private-Subnet-1a"
  }
}

resource "aws_subnet" "vorx-subnet-priv-1b" {
  vpc_id     = aws_vpc.vorx_vpc_prod.id
  cidr_block = "10.0.20.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "Private-Subnet-1b"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vorx_vpc_prod.id

  tags = {
    Name = "igw-prod-vorx-vpc"
  }
}











##==== Outputs do Nosso Terraform =======##

output "vpc_vorx_id" {
value = "aws_vpc.vorx_vpc_prod.id"
}

output "vpc_vorx_arn" {
value = "aws_vpc.vorx_vpc_prod.arn"
}

output "vorx_pro_subnets" {
value = "aws_subnet.*.id"
}
