resource "aws_ecs_cluster" "main_ecs_cluster01" {
  name = "main_ecs_cluster01"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }

  tags = {
  Name = "main_ecs_cluster01"
  Type = "aws_ecs_cluster"
  Region = "ap-northeast-1"
  Manager = "terraform 1.50.0"
  Provider = "1.3.7"
  }
}

resource "aws_ecs_task_definition" "main_ecs_task_define01" {
  family = "main_ecs_task_define01"
  container_definitions = jsonencode([
    {
      name      = "web"
      image     = "${aws_ecr_repository.main_ecr_01.repository_url}:latest"
      cpu       = 10
      memory    = 512
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 8080
        }
      ]
    }
  ])

  volume {
    name      = "service-storage"
    host_path = "/ecs/service-storage"
  }

  placement_constraints {
    type       = "memberOf"
    expression = "attribute:ecs.availability-zone in [ap-northeast-1a, ap-northeast-1c]"
  }

  tags = {
  Name = "main_ecs_cluster01"
  Type = "aws_ecs_cluster"
  Region = "ap-northeast-1"
  Manager = "terraform 1.50.0"
  Provider = "1.3.7"
  }
}
