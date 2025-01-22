How to use this.

Prerequisites: Terraform installed.

1. Change the subscription ID in terraform.tf to your subscription ID
2. Sign in to the az cli using your credentials.
3. (optional) If you want to use workspaces create a new workspace using `terraform workspace new name`
4. Execute a `terraform init`
5. You're ready to wrok with other terraform commands now. 

Usefull commands:
- `terraform plan -var-file=tf_demo_cloudchamps.tfvars`
- `terraform apply -var-file=tf_demo_cloudchamps.tfvars`
- `terraform destroy -var-file=tf_demo_cloudchamps.tfvars`