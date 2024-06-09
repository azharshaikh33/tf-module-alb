# This creates alb

resource "aws_lb" "alb" {
  name               = var.ALB_NAME
  internal           = var.INTERNAL
  load_balancer_type = "application"
  security_groups    = SG
  subnets            = SUBNET_IDS

  tags = {
    name = var.ALB_NAME
  }
}

