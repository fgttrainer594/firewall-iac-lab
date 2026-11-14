This exercise introduces variables, maps, locals, expressions and `for_each`.

Run the normal Terraform workflow, then invoke the PAN-OS commit action.

Use `terraform console` and try:

```text
var.fgt_addresses
keys(var.fgt_addresses)
local.owner_comment
split("/", "198.51.100.111/32")
```
