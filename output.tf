
output "instance1_id" {
  value = aws_instance.WebServer1.id
}

output "instance2_id" {
  value = aws_instance.WebServer2.id
}

output "instance_public_ip1" {
  value       = aws_instance.WebServer1.public_ip
}

output "instance_public_ip2" {
  value       = aws_instance.WebServer2.public_ip
}

output "rds_endpoint" {
  description = "database endpoint"
  value = aws_db_instance.app_database.endpoint
}