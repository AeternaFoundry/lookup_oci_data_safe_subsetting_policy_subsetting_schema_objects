variable "data_safe_subsetting_policy_subsetting_schema_objects_lookup" {
  description = <<EOT
Map of data_safe_subsetting_policy_subsetting_schema_objects_lookup, attributes below
Required:
    - subsetting_policy_id
Optional:
    - object
    - schema_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    subsetting_policy_id = string
    object               = optional(list(string))
    schema_name          = optional(list(string))
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

