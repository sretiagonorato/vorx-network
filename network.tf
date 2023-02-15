resource "aws_vpc" "vorx_vpc_prod" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "Vorx-PROD"
  }
}

##==== Outputs do Nosso Terraform =======##

output "vpc_vorx_id" {
value = "aws_vpc.vorx_vpc_prod.id"
}

output "vpc_vorx_arn" {
value = "aws_vpc.vorx_vpc_prod.arn"
}


