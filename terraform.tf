 
 terraform {
  required_version = "~> 1.1"
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~>2.20.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}
 
 terraform {
  backend "s3" {
    region         = "eu-west-1"
    bucket         = "kabisa-terraform-statefiles"
    dynamodb_table = "kabisa-terraform-lockfiles"
    key            = "kabisa-playground-anas/ecs-demo03.tfstate"
    encrypt        = true
    role_arn       = "arn:aws:iam::003476575487:role/admin"
    session_name   = "terraform"
  }
}