# Learning Terraform 

## Different Provider
* aws 
* docker

## Generate Documentation
Generated content the file by `.terraform-docs.yml`.
```bash
terraform output --json > output_values.json
terraform-docs markdown table .
```
