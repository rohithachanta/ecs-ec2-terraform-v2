output "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  value       = module.ecs.ecs_cluster_name
}

output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = module.ecs.alb_dns_name
}

output "target_group_arn" {
  description = "ARN of the Target Group"
  value       = module.ecs.target_group_arn
}

output "ecs_service_name" {
  description = "Name of the ECS Service"
  value       = module.ecs.ecs_service_name
}

output "ecs_task_definition_arn" {
  description = "ARN of the ECS Task Definition"
  value       = module.ecs.ecs_task_definition_arn
}

output "autoscaling_group_name" {
  description = "Name of the Auto Scaling Group"
  value       = module.ecs.autoscaling_group_name
}