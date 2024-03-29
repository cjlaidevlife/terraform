<!-- BEGIN_TF_DOCS -->
# terraform with aws provider
Use the terraform with aws provider to interact. You must configure the provider with the proper credentials before you can use it.
## Prerequirements
|Name|Version|
|---|---|
|aws-cli|2.8.7|
|tfenv|2.2.3|
|terraform|1.3.7|
|terraform-docs|1.2.21|

you need install below tools
1. **terraform**: Can install specific version terraform by `tfenv` command tool.
2. **aws-cli**: Cofiguration aws credentials and verify result.
3. **terraform-docs**: Generate documentation about terraform.
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.50.0 |
## Modules

No modules.
## Inputs

No inputs.
## Outputs

| Name | Description | Value | Sensitive |
|------|-------------|-------|:---------:|
| <a name="output_ecr_main_ecr_01_url"></a> [ecr\_main\_ecr\_01\_url](#output\_ecr\_main\_ecr\_01\_url) | aws ecr | `"125116272033.dkr.ecr.ap-northeast-1.amazonaws.com/main_ecr_01"` | no |
| <a name="output_main_ecs_cluster01"></a> [main\_ecs\_cluster01](#output\_main\_ecs\_cluster01) | aws ecs | `"arn:aws:ecs:ap-northeast-1:125116272033:cluster/main_ecs_cluster01"` | no |
| <a name="output_subnet_main_subnet_01a_cidr"></a> [subnet\_main\_subnet\_01a\_cidr](#output\_subnet\_main\_subnet\_01a\_cidr) | main\_subnet\_01a cidr | `"10.10.20.0/28"` | no |
| <a name="output_subnet_main_subnet_02c_cidr"></a> [subnet\_main\_subnet\_02c\_cidr](#output\_subnet\_main\_subnet\_02c\_cidr) | main\_subnet\_02c cidr | `"10.10.20.16/28"` | no |
| <a name="output_vpc_main_cidr"></a> [vpc\_main\_cidr](#output\_vpc\_main\_cidr) | main vpc cidr | `"10.10.0.0/16"` | no |
## Resources

- resource.aws_ecr_lifecycle_policy.main_ecr_01_untaged_policy (ecr.tf#18)
- resource.aws_ecr_repository.main_ecr_01 (ecr.tf#1)
- resource.aws_ecs_cluster.main_ecs_cluster01 (ecs.tf#1)
- resource.aws_ecs_task_definition.main_ecs_task_define01 (ecs.tf#18)
- resource.aws_iam_policy.aws_ecr_iam_policy (iam.tf#1)
- resource.aws_instance.main_ec2_web (ec2.tf#25)
- resource.aws_network_interface.main_ec2_network_interface01 (ec2.tf#17)
- resource.aws_subnet.main_subnet_01a (vpc.tf#14)
- resource.aws_subnet.main_subnet_02c (vpc.tf#28)
- resource.aws_vpc.main (vpc.tf#1)
- data source.aws_ami.ubuntu (ec2.tf#1)
<!-- END_TF_DOCS -->