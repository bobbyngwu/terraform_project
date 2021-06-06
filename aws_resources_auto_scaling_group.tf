resource "aws_autoscaling_group" "test_instance"{
    launch_configuration = aws_launch_configuration.test_instance.id
    availability_zones = data.aws_availability_zones.all.names
    min_size = 2
    max_size = 10 
    load_balancers = [aws_elb.test_instance.name]
    health_check_type = "ELB"

    tag {
        key = "Name"
        value = "dmw-asg"
        propagate_at_launch = true
    }
}