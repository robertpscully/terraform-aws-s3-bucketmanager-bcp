variable "content" {
  type = map(any)
  validation {
    condition     = contains(keys(var.content), "bucket_name")
    error_message = "The content map must contain a 'bucket_name' key."
  }
  validation {
    condition     = can(regex("^[a-z0-9.-]{3,63}$", var.content["bucket_name"]))
    error_message = "The bucket name must be between 3 and 63 characters long and can only contain lowercase letters, numbers, dots, and hyphens."
  }
}

variable "module_version" {
  type    = string
  default = "v0.1"
  validation {
    condition     = var.module_version == local.module_version
    error_message = "Data format version (${var.module_version}) does not match the expected version (${local.module_version})."
  }
}