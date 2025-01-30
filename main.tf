terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket         = "nltk-terraform-state-bucket"
    key            = "ecs-ec2.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "nltk-terraform-lock"
  }
}

provider "aws" {
  region = var.aws_region
}

module "codepipeline" {
  source = "./codepipeline"
  aws_region = var.aws_region
  github_webhook_secret = var.github_webhook_secret
}

module "ecs" {
  source = "./ecs"
  aws_region = var.aws_region
  cluster_name = var.cluster_name
  launch_template_name = var.launch_template_name
  ami_id = var.ami_id
  instance_type = var.instance_type
  security_group_id = var.security_group_id
  subnets = var.subnets
  vpc_id = var.vpc_id
  container_name = var.container_name
  container_port = var.container_port
  ecr_repo_name = var.ecr_repo_name
  task_memory = var.task_memory
  task_cpu = var.task_cpu
  asg_min_size = var.asg_min_size
  asg_max_size = var.asg_max_size
  asg_desired_capacity = var.asg_desired_capacity
  ecs_desired_count = var.ecs_desired_count
  alb_name = var.alb_name
  target_group_name = var.target_group_name
}