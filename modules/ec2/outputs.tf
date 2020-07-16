output "instance_id" {
  description = "Sample instance type"
  value       = aws_instance.sample_instance.id
}

output "private_ip" {
  description = "Sample instance type"
  value       = aws_instance.sample_instance.private_ip
}

output "public_ip" {
  description = "Sample instance type"
  value       = aws_instance.sample_instance.public_ip
}