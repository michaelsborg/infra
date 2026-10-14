terraform {
  backend "s3" {
    bucket       = "zen-pharma-terraform-state-mikectlm"  # Replace with your S3 bucket name
    key          = "envs/dev/terraform.tfstate"
    region       = "eu-north-1"
    encrypt      = true
    use_lockfile = true   # S3 native locking (Terraform >= 1.11)
  }
}