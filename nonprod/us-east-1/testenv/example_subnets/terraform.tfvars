terragrunt = {
    terraform {
        source  = "github.com/sverch/terraform-modules//example_subnets?ref=master"
    }

    # Include all settings from the root terraform.tfvars file
    include = {
        path = "${find_in_parent_folders()}"
    }

    dependencies {
        paths = ["../example_vpc"]
    }
}

environment_name = "testenv"
aws_region = "us-east-1"
