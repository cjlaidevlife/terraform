resource "aws_ecr_repository" "main_ecr_01" {
  name                 = "main_ecr_01"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "main_ecr_01"
    Type = "aws_ecr_repository"
    Region = "ap-northeast-1"
    Manager = "terraform 1.50.0"
    Provider = "1.3.7"
  }
}

resource "aws_ecr_lifecycle_policy" "main_ecr_01_untaged_policy" {
  repository = aws_ecr_repository.main_ecr_01.name

  policy = <<EOF
{
    "rules": [
        {
            "rulePriority": 1,
            "description": "Expire images older than 5 days",
            "selection": {
                "tagStatus": "untagged",
                "countType": "sinceImagePushed",
                "countUnit": "days",
                "countNumber": 5
            },
            "action": {
                "type": "expire"
            }
        },
        {
            "rulePriority": 2,
            "description": "Keep last 10 images",
            "selection": {
                "tagStatus": "tagged",
                "tagPrefixList": ["release"],
                "countType": "imageCountMoreThan",
                "countNumber": 10
            },
            "action": {
                "type": "expire"
            }
        }
    ]
}
EOF
}
