module "mod-Account" {
  source = "../aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jitender+tools6@birlasoft.com"
    AccountName               = "Birla Test"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "jitender+tools6@birlasoft.com"
    SSOUserFirstName          = "Jitender"
    SSOUserLastName           = "Account"
  }

  account_tags = {
    "Application Name" = "Test Application01"
    "Application ID" = "tst1"
    "Cost Center" = "1000"
    
  }

  change_management_parameters = {
    change_requested_by = "Jitender Yadav"
    change_reason       = "For testing aft account vending"
  }

  custom_fields = {
    vpc_count = "1"
  }

  account_customizations_name = "sandbox"
}
