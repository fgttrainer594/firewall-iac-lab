# Firewall IaC Lab

Enterprise Infrastructure-as-Code lab for automating FortiGate and Palo Alto firewalls using Git, Ansible, and Terraform.

## Lab Platform

EVE-NG

## IaC Controller

- Linux12
- Management IP: 192.168.100.10

## Shared Services

- Windows Jump Host: 192.168.100.20
- Linux13 Syslog Server: 192.168.100.30
- Linux14 FreeIPA / LDAP Server: 192.168.100.40

## Firewall Management

### FortiGate

- FGT1: 192.168.100.101
- FGT2: 192.168.100.102
- FGT3: 192.168.100.103
- FGT4: 192.168.100.104
- FGT5: 192.168.100.105

### Palo Alto

- PA6: 192.168.100.201
- PA7: 192.168.100.202
- PA8: 192.168.100.203
- PA9: 192.168.100.204
- PA10: 192.168.100.205

## Technology Stack

- Git
- GitHub
- Ansible
- Terraform
- Fortinet FortiOS
- Palo Alto PAN-OS
- FreeIPA / LDAP / LDAPS
- Python
- REST APIs
- Palo Alto PAN-OS SDK
- CI/CD
- GitHub Actions
- Infrastructure testing and validation

## Project Objectives

The project progressively builds an enterprise-style five-pod firewall environment including:

- Interface and zone automation
- Address and service objects
- Static routing
- OSPF
- BGP
- Security policies
- NAT
- UTM / security profiles
- IPsec VPN
- Hub-and-spoke VPN
- Dynamic routing over VPN
- Centralized logging
- LDAP / LDAPS authentication
- Identity-based policy
- HA / clustering
- Terraform state and drift management
- Git branching and pull requests
- CI/CD
- Security validation
- Enterprise change control

## Important Addressing Rule

FortiGate `port2` obtains DHCP addressing from the `10.0.0.0/8` range.

**Do not use `10.0.0.0/8` for any additional lab addressing.**

