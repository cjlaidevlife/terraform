resource "aws_iam_policy" "aws_ecr_iam_policy" {
  name        = "AWSECRIAMRolePolicy"
  path        = "/"
  description = "Push Image to AWS ECR Role Policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
            "Sid": "GetAuthorizationToken",
            "Effect": "Allow",
            "Action": [
                "ecr:GetAuthorizationToken"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowPushImage",
            "Effect": "Allow",
            "Action": [
                "ecr:BatchCheckLayerAvailability",
                "ecr:InitiateLayerUpload",
                "ecr:UploadLayerPart",
                "ecr:CompleteLayerUpload",
                "ecr:PutImage"
            ],
            "Resource": "arn:aws:ecr:ap-northeast-1:125116272033:repository/*"
        }
    ]
  })
  tags = {
    Name = "aws_ecr_iam_policy"
    Type = "aws_iam_policy"
    Region = "ap-northeast-1"
    Manager = "terraform 1.50.0"
    Provider = "1.3.7"
  }
}

