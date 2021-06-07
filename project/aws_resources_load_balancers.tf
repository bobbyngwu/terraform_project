resource "aws_elb" "test_instance"{
    name = "dmw-awb"
    availability_zones = data.aws_availability_zones.all.names
    security_groups    = [aws_security_group.test_elb.id]

   health_check { 
    target              = "HTTP:${var.server_port}/"
    interval            = 30
    timeout             = 3
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }
  # This adds a listener for incoming HTTP requests.
  listener {
    lb_port           = 80
    lb_protocol       = "http"
    instance_port     = var.server_port
    instance_protocol = "http"
  }

}