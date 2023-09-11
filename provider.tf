# configuring docker and aws as providers
provider "docker" {}

provider "aws" {
region     = "eu-west-1"
  
  assume_role {
     role_arn = "arn:aws:iam::099211283664:role/admin"
   }
}