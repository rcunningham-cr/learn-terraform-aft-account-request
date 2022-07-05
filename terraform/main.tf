module "sandboxerino" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "me@richcunningham.uk"
    AccountName               = "sandboxing"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "rich@cunningham.sh"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    vpc_name = "test"
    vpc_cidr = "192.168.69.0/24"
  }

  account_customizations_name = "sandbox"
}
