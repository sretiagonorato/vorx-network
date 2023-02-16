terraform {
  backend "s3" {
    bucket = "tnorato-vorx-terraform"
    key    = "vorx-network.tfstate"
    region = "us-east-1"
  }
}
