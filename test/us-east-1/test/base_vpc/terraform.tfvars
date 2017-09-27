terragrunt = {
    terraform {
        source  = "github.com/sverch/terraform-modules//base_vpc?ref=master"
    }
}

region = "us-east-1"
cidr_block = "10.1.0.0/16"
