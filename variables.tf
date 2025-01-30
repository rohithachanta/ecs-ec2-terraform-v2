variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "cluster_name" {
  description = "ECS cluster name"
  type        = string
}

variable "launch_template_name" {
  description = "Launch template name for EC2 instances"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "Instance type for EC2 instances"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID for ECS instances"
  type        = string
}

variable "subnets" {
  description = "Subnets for ECS instances"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID for ECS instances"
  type        = string
}

variable "container_name" {
  description = "Name of the ECS container"
  type        = string
}

variable "container_port" {
  description = "Port for the ECS container"
  type        = number
}

variable "ecr_repo_name" {
  description = "ECR repository name"
  type        = string
}

variable "task_memory" {
  description = "Memory for the ECS task"
  type        = string
}

variable "task_cpu" {
  description = "CPU for the ECS task"
  type        = string
}

variable "asg_min_size" {
  description = "Minimum size of the Auto Scaling Group"
  type        = number
}

variable "asg_max_size" {
  description = "Maximum size of the Auto Scaling Group"
  type        = number
}

variable "asg_desired_capacity" {
  description = "Desired capacity of the Auto Scaling Group"
  type        = number
}

variable "ecs_desired_count" {
  description = "Desired number of ECS tasks to run"
  type        = number
}

variable "alb_name" {
  description = "Name of the Application Load Balancer"
  type        = string
}

variable "target_group_name" {
  description = "Name of the Target Group"
  type        = string
}

variable "github_webhook_secret" {
  description = "Secret token for GitHub webhook authentication"
  type        = string
}

# variable "aws_region" {
#   description = "AWS region to deploy resources"
#   type        = string
# }

# variable "aws_account_id" {
#   description = "AWS account ID"
#   type        = string
# }

# variable "aws_access_key" {
#   description = "AWS access key"
#   type        = string
#   sensitive   = true
# }

# variable "aws_secret_key" {
#   description = "AWS secret key"
#   type        = string
#   sensitive   = true
# }