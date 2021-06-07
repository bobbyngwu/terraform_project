variable "server_port"{
    description = "The port the server will use for HTTP requests"
    type = number
    default = 8080
}

output "public_ip" {
  value       = aws_instance.test_instance.public_ip
  description = "The public IP of the web server"
}

output "clb_dns_name" {
  value       = aws_elb.test_instance.dns_name
  description = "The domain name of the load balancer"
}