provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]

}

terraform {
  backend "s3" {
    bucket  = "shadis-first-bucket"
    key     = "state-files/terraform.tfstate"
    region  = "us-east-1"

  }
}