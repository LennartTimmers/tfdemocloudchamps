variable "name" {
  type = string
  default = "tfdemocloudchamps"

  validation {
    condition     = can(regex("cloudchamps", var.name))
    error_message = "The string must contain: 'cloudchamps'"
  }
}

variable "create_modules" {
  type = bool
  default = false
}

variable "storageaccounttocreate" {
  type = list
}