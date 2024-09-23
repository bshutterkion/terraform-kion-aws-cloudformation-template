resource "kion_aws_cloudformation_template" "this" {
  name    = var.name
  regions = contains(var.regions, "*") ? [] : var.regions # Empty list means all regions in Kion

  dynamic "owner_users" {
    for_each = var.owner_users
    content {
      id = owner_users.value.id
    }
  }

  dynamic "owner_user_groups" {
    for_each = var.owner_user_groups
    content {
      id = owner_user_groups.value.id
    }
  }

  description            = var.description
  policy                 = var.policy_template != null ? templatefile(var.policy_template, {}) : var.policy
  region                 = var.region
  sns_arns               = var.sns_arns
  template_parameters    = var.template_parameters
  termination_protection = var.termination_protection
  tags                   = var.tags
}
