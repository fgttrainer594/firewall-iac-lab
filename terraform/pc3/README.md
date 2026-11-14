Recommended order:

```text
01_fgt_first_resource
02_pan_first_resource
03_for_each_objects
04_modules
05_import_brownfield
06_drift
07_backend_reference
```

Each numbered directory has an independent state file. This is intentional for training isolation.

Never let two state files manage the same real firewall object.
