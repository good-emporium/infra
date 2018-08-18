module "api_orgs_dev" {
  source = "../../modules/api/dynamo"

  capacity = 1
  env      = "d"
  hash_key = "id"
  name     = "organizations"
}

module "api_orgs_prod" {
  source = "../../modules/api/dynamo"

  capacity = 20
  env      = "p"
  hash_key = "id"
  name     = "organizations"
}

module "api_users_dev" {
  source = "../../modules/api/dynamo"

  capacity = 1
  env      = "d"
  hash_key = "id"
  name     = "users"
}

module "api_users_prod" {
  source = "../../modules/api/dynamo"

  capacity = 20
  env      = "p"
  hash_key = "id"
  name     = "users"
}
