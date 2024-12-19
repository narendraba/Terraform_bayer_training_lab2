module "vpc" {
  source = "git::https://github.com/narendraba/private_module_bayer.git"

  cidr_block         = "10.0.0.0/16"
  public_subnets     = ["10.0.1.0/24", "10.0.3.0/24"]
  private_subnets    = ["10.0.2.0/24", "10.0.4.0/24"]
  availability_zones = ["ap-south-1a", "ap-south-1b"]
}
