module "mod-Account" {
  source = "../aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jitender+tools8@birlasoft.com"
    AccountName               = "Lennar Test"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "jitender+tools8@birlasoft.com"
    SSOUserFirstName          = "Jitender"
    SSOUserLastName           = "Account"
  }

  account_tags = {
    "Application Name" = "Test Application 8"
    "Application ID" = "tst"
    "Cost Center" = "1000"
    
  }

  change_management_parameters = {
    change_requested_by = "Jitender Yadav"
    change_reason       = "For testing aft account vending"
  }

  custom_fields = {
    app_code = "tst"
    budget = "200"
    vpc_count = "1"
  }

  account_customizations_name = "sandbox"
}
