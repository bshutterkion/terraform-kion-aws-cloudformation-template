variable "name" {
  description = "The name of the CloudFormation template"
  type        = string
}

variable "regions" {
  description = "The regions where the template will be deployed. Use ['*'] for all regions."
  type        = set(string)
  default     = ["*"]
}

variable "owner_users" {
  description = "List of owner users for the template"
  type = list(object({
    id = number
  }))
  default = []
}

variable "owner_user_groups" {
  description = "List of owner user groups for the template"
  type = list(object({
    id = number
  }))
  default = []
}

variable "description" {
  description = "Description of the template"
  type        = string
  default     = null
}

variable "policy" {
  description = "The CloudFormation template policy"
  type        = string
  default     = null
}

variable "policy_template" {
  description = "Path to a template file for the CloudFormation policy"
  type        = string
  default     = null
}

variable "region" {
  description = "The region where the CloudFormation stack will be deployed"
  type        = string
  default     = null
}

variable "sns_arns" {
  description = "SNS ARNs for stack notifications"
  type        = string
  default     = null
}

variable "template_parameters" {
  description = "Parameters for the CloudFormation template"
  type        = string
  default     = null
}

variable "termination_protection" {
  description = "Whether to enable termination protection"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Stack-level tags that will apply to all supported resources in the CloudFormation stack"
  type        = map(string)
  default     = {}
}
