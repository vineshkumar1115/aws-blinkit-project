
output "instance_id" {
  value = aws_instance.blinkit_server.id
}

output "public_ip" {
  value = aws_instance.blinkit_server.public_ip
}

output "website_url" {
  value = "http://${aws_instance.blinkit_server.public_ip}"
}
