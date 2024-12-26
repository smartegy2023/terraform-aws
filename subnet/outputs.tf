output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = aws_subnet.public.id
}

output "private_subnet_id_1" {
  description = "The ID of the first private subnet"
  value       = aws_subnet.private_1.id
}

output "private_subnet_id_2" {
  description = "The ID of the second private subnet"
  value       = aws_subnet.private_2.id
}