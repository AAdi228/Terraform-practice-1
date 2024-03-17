output "public_ip" {
  value = aws_instance.Adithya.public_ip
  sensitive = true
}
output "private_ip" {
  value = aws_instance.Adithya.private_ip   
}
output "dns-name" {
    value = aws_instance.Adithya.public_dns
  
}