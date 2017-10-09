terragrunt = {
    terraform {
        source  = "github.com/sverch/terraform-modules//example_vpc?ref=master"
    }

    # Include all settings from the root terraform.tfvars file
    include = {
        path = "${find_in_parent_folders()}"
    }
}

environment_name = "testenv"
aws_region = "us-east-1"
cidr_block = "10.1.0.0/16"
