output "bucket_config" {
  value = {
    content = {
      bucket_name = var.bucket_name
    }
    module_version = local.module_version
  }
}