variable "resource_groups" {
  description = "Generic Azure Resource Group configuration"

  type = map(object({

    # Mandatory attributes
    name     = string
    location = string

    # Optional attributes
    tags = optional(map(string), {})

    prevent_destroy = optional(bool, false)

    timeouts = optional(object({
      create = optional(string, "90m")
      read   = optional(string, "5m")
      update = optional(string, "90m")
      delete = optional(string, "90m")
    }), {})
  }))
}
