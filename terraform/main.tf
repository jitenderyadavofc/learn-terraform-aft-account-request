module "tools-01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jitender+tools1@gmail.com"
    AccountName               = "tools1 account"
    ManagedOrganizationalUnit = "workload"
    SSOUserEmail              = "jitender+tools1@gmail.com"
    SSOUserFirstName          = "tools1"
    SSOUserLastName           = "account"
  }

  account_tags = {
    "Learn Tutorial" = "latest"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
