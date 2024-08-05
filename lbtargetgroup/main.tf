variable "lb_target_group_name" {}
variable "lb_target_group_port" {}
variable "lb_target_group_protocol" {}
variable "vpc_id" {}
variable "ec2_instance_id" {}

resource "aws_lb_target_group" "flaskapi_lb_tar_grp" {
  name = var.lb_target_group_name
  port = var.lb_target_group_port
  protocol = var.lb_target_group_protocol
  vpc_id = var.vpc_id

  health_check {
    path = "/login"
    port = 8080
    healthy_threshold = 6
    unhealthy_threshold = 2
    timeout = 2
    interval = 5
    matcher = "200"
  }
}

resource "aws_lb_target_group_attachment" "flaskapi_lb_tar_grp_attach" {
  target_group_arn = aws_lb_target_group.flaskapi_lb_tar_grp.arn
  target_id = var.ec2_instance_id
  port = 8080
}