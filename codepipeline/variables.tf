variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "github_webhook_secret" {
  description = "Secret token for GitHub webhook authentication"
  type        = string
}