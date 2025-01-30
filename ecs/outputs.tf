output "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  value       = aws_ecs_cluster.this.name
}

output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = aws_lb.this.dns_name
}

output "target_group_arn" {
  description = "ARN of the Target Group"
  value       = aws_lb_target_group.this.arn
}

output "ecs_service_name" {
  description = "Name of the ECS Service"
  value       = aws_ecs_service.this.name
}

output "ecs_task_definition_arn" {
  description = "ARN of the ECS Task Definition"
  value       = aws_ecs_task_definition.this.arn
}

output "autoscaling_group_name" {
  description = "Name of the Auto Scaling Group"
  value       = aws_autoscaling_group.this.name
}