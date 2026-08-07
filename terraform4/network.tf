module "my_vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 6.0"

  name = "rackula-vpc"
  cidr = "10.0.0.0/16"
  azs  = ["ap-southeast-1a"]

  public_subnets = ["10.0.1.0/24"]

  manage_default_security_group = false
  map_public_ip_on_launch       = true
  enable_nat_gateway            = false
}
