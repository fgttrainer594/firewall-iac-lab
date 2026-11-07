Use an object already managed by one of the earlier exercises.

1. Run `terraform plan` and confirm no changes.
2. Change the object's description manually in the firewall GUI.
3. Run `terraform plan` again.
4. Observe the drift Terraform detects.
5. Decide whether code or the device should win.
6. If code is authoritative, run `terraform apply`.
7. Run `terraform plan` again and confirm convergence.

Do not make a destructive manual change to interfaces, routing, VPNs, or existing Ansible-owned objects for this exercise.
