provider "aws" {
  region = var.region
}

module "transit_gateway" {
  source                            = "../../"
  amazon_side_asn                   = "64512"
  auto_accept_shared_attachments    = "disable"

  contact     = var.contact
  environment = var.environment
  team        = var.team
  purpose     = var.purpose
}