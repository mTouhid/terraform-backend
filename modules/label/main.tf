module "label" {
  source  = "cloudposse/label/null"
  version = "0.24.1"

  namespace = "staff-device"
  stage     = terraform.workspace == "default" ? "" : terraform.workspace
  name      = var.service_name
  delimiter = "-"

  tags = {
    "business-unit" = "MoJO"
    "application"   = "private-dns-zone",
    "is-production" = "true"
    "owner"         = "staff-device-private-dns-zone@justice.gov.uk"

    "environment-name" = "global"
    "source-code"      = "https://github.com/MTouhid/terraform-backend"
  }
}
