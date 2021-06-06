resource "aws_launch_configuration" "test_instance" {
  image_id        = "ami-4b7d572e"
  instance_type   = "t2.micro"
  security_groups = [aws_security_group.test_instance.id]
  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p "${var.server_port}" &
              EOF
  lifecycle {
    create_before_destroy = true
  }
}