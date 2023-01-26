terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region     = "${var.region}"
  access_key = "${AWS_ACCESS_KEY}"
  secret_key = "${AWS_SECRET_KEY}"

  default_tags {
      tags = {
          Environment = "${var.environment}"
          Owner       = "${var.owner}"
          Project     = "${var.project}"
      }
  }
}
