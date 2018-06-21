module "web_dev" {
  source = "../../modules/web/storage"

  env            = "dev"
  logging_bucket = "${module.init.logging_bucket}"
}

module "web_staging" {
  source = "../../modules/web/storage"

  env            = "staging"
  logging_bucket = "${module.init.logging_bucket}"
}

module "web_prod" {
  source = "../../modules/web/storage"

  env            = "prod"
  logging_bucket = "${module.init.logging_bucket}"
}
