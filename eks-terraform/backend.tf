terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">= 5.25.0"
    }
  }

  backend "s3" {
    bucket = "devops-bkt-11"
    key    = "eks/terraform.tfstate"
    region = "east-key-pair"
  }

  required_version = ">= 1.6.3"
}
