terragrunt = {
    terraform {
        source  = "github.com/sverch/terraform-modules//base_internet_gateway?ref=master"
    }

    # Include all settings from the root terraform.tfvars file
    include = {
        path = "${find_in_parent_folders()}"
    }

    dependencies {
        paths = ["../base_vpc"]
    }
}

env_name = "testenv"
region = "us-east-1"
