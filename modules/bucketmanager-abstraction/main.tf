output bucket_details {
    value = {"bucket_name" = module.bucket_concrete.bucket_arn}
}

module "bucket_concrete" {
    source = "tbd"
    bucket_name = local.bucket_name
}