provider "aws" {
    region = "us-east-1"
}

module "base_vpc" {
    source  = "github.com/sverch/terraform-modules//base_vpc?ref=master"
}
