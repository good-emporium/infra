module "api_dev" {
  source = "../../modules/api/dynamo"

  env            = "dev"
//  logging_bucket = "${module.init.logging_bucket}"
}

module "api_prod" {
  source = "../../modules/api/dynamo"

  env            = "prod"
//  logging_bucket = "${module.init.logging_bucket}"
}
