resource "azuread_application" "pam_aad" {
  name = "Azure Active Directory PAM Module"
}

resource "azuread_service_principal" "pam_aad" {
  application_id = "${azuread_application.pam_aad.application_id}"
}
