# remote-state

This terraform script creates the resources that will be used for the remote backend.

## Notes

* Should only need to be run once
* Of course, the remote backend doesn't exist at this point so state is stored locally.
If the resources need to be edited, `terraform import` the resources first.
