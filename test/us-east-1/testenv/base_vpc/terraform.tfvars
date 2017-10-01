terragrunt = {
    terraform {
        source  = "github.com/sverch/terraform-modules//base_vpc?ref=master"
    }

    # Include all settings from the root terraform.tfvars file
    include = {
        path = "${find_in_parent_folders()}"
    }
}

env_name = "testenv"
region = "us-east-1"
cidr_block = "10.1.0.0/16"
