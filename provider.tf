
terraform {
required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = ">= 1.0.0"


  backend "s3" {
  bucket = "bucket-for-githubactions-example"
  key    = "lockID/env/terraform.lock"
  region = "us-east-1"
   }
  
}
