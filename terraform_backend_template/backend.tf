terraform {
  backend "s3" {
    bucket         = "nltk-terraform-state-bucket"
    key            = "ecs-ec2.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "nltk-terraform-lock"
  }
}