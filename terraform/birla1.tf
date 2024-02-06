module "toolsbirla1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jitender+tools5@birlasoft.com"
    AccountName               = "birla account1"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "jitender+tools5@birlasoft.com"
    SSOUserFirstName          = "tools5"
    SSOUserLastName           = "account"
  }

  account_tags = {
    "Learn Tutorial" = "latest test"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn check"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "dev"
  }

  account_customizations_name = "sandbox"
}
