# resource "aws_instance" "test_instance"{
#     ami = "ami-4b7d572e"
#     instance_type = "t2.micro"
#     vpc_security_group_ids = [aws_security_group.test_instance.id]
    
#     tags = {
#         Name = "eventrollers-ec2-instance"
#     }
# }