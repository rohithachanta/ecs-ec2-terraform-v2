output "codepipeline_name" {
  description = "Name of the CodePipeline"
  value       = aws_codepipeline.codepipeline.name
}