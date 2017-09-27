terragrunt = {
    terraform {
        source  = "github.com/sverch/terraform-modules//base_vpc?ref=master"
    }

    # Configure Terragrunt to automatically store tfstate files in an S3 bucket
    remote_state {
        backend = "s3"
        config {
            encrypt = true
            bucket = "sverch-test-terraform-state-${get_aws_account_id()}"
            key = "${path_relative_to_include()}/terraform.tfstate"
            region = "us-east-1"
            lock_table = "terraform-locks"
        }
    }
}

region = "us-east-1"
cidr_block = "10.0.0.0/8"
