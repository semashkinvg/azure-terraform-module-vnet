module "vnet" {
  source           = "../vnet"
  global_prefix    = "tst"
  purpose          = "nw"
  environment_code = "sbx"
  location         = "uksouth"
  rg_name          = "testrg"
  vnet = {
    cidrs = ["10.0.0.0/16"]
    subnets = {
      default = {
        cidrs = ["10.0.0.0/24"]
      }
    }
  }
  tags = {}
}
