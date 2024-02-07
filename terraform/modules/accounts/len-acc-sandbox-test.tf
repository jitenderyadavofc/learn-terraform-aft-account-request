module "len-acc-sandbox-test" {
  source = "../aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "govindaraj.rangan@gmail.com"
    AccountName               = "Govind Sandbox"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "govindaraj.rangan@gmail.com"
    SSOUserFirstName          = "Govind"
    SSOUserLastName           = "Account"
  }

  account_tags = {
    "Application Name" = "Test Application"
    "Application ID" = "tst"
    "Cost Center" = "1000"
    
  }

  change_management_parameters = {
    change_requested_by = "Govindaraj Rangan"
    change_reason       = "For testing aft account vending"
  }

  custom_fields = {
    vpc_count = "1"
  }

  account_customizations_name = "sandbox"
}
