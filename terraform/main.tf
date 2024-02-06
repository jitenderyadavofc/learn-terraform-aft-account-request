module "toolsbirla" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jitender+tools4@birlasoft.com"
    AccountName               = "birla account"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "jitender+tools4@birlasoft.com"
    SSOUserFirstName          = "tools4"
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
