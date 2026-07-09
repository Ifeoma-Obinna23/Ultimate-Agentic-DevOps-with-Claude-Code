# Remote state backend
#
# Setup order:
#   1. First apply: leave this block commented out and run `terraform init`
#      with local state, then `terraform apply` to create your infrastructure
#      (including, if you manage it separately, the S3 bucket + DynamoDB
#      table that will hold this remote state).
#   2. Uncomment the backend "s3" block below and fill in the bucket/table
#      names for the state-storage resources you created.
#   3. Run `terraform init -migrate-state` to migrate local state into S3.
#
# terraform {
#   backend "s3" {
#     bucket         = "REPLACE_WITH_YOUR_TF_STATE_BUCKET"
#     key            = "portfolio-site/terraform.tfstate"
#     region         = "ap-south-1"
#     dynamodb_table = "REPLACE_WITH_YOUR_TF_LOCK_TABLE"
#     encrypt        = true
#   }
# }
