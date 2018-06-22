# remote-state

This terraform script creates the resources that will be used for the remote backend.

## Notes

* Of course, the remote backend doesn't exist at this point so state is stored locally.
If the resources need to be edited, `terraform import` the resources first.
* Logging is vital here, but the logging bucket won't exist yet, so...
  1. Comment out the logging block in [backend.tf](backend.tf)
  2. Run `terraform apply` here
  3. Create the [global](../global) resources
  4. Uncomment the logging block
  5. Run `terraform apply` again here
