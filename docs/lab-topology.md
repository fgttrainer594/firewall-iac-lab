# Firewall IaC Lab Topology

## Management Network

192.168.100.0/24

| Device | Management IP |
|---|---|
| Linux12 IaC Controller | 192.168.100.10 |
| Windows Jump Host | 192.168.100.20 |
| Linux13 Syslog | 192.168.100.30 |
| Linux14 FreeIPA | 192.168.100.40 |
| FGT1 | 192.168.100.101 |
| FGT2 | 192.168.100.102 |
| FGT3 | 192.168.100.103 |
| FGT4 | 192.168.100.104 |
| FGT5 | 192.168.100.105 |
| PA6 | 192.168.100.201 |
| PA7 | 192.168.100.202 |
| PA8 | 192.168.100.203 |
| PA9 | 192.168.100.204 |
| PA10 | 192.168.100.205 |

## Pod 1

Win27 -> PA6 -> FGT1 -> Internet

- FGT1 port3: 172.16.1.1/30
- PA6 ethernet1/1: 172.16.1.2/30
- PA6 ethernet1/2: 192.168.11.1/24
- Win27: 192.168.11.10/24

## Pod 2

Win28 -> PA7 -> FGT2 -> Internet

- FGT2 port3: 172.16.2.1/30
- PA7 ethernet1/1: 172.16.2.2/30
- PA7 ethernet1/2: 192.168.12.1/24
- Win28: 192.168.12.10/24

## Pod 3

Win30 -> PA8 -> FGT3 -> Internet

- FGT3 port3: 172.16.3.1/30
- PA8 ethernet1/1: 172.16.3.2/30
- PA8 ethernet1/2: 192.168.13.1/24
- Win30: 192.168.13.10/24

## Pod 4

Win29 -> PA9 -> FGT4 -> Internet

- FGT4 port3: 172.16.4.1/30
- PA9 ethernet1/1: 172.16.4.2/30
- PA9 ethernet1/2: 192.168.14.1/24
- Win29: 192.168.14.10/24

## Pod 5

Win31 -> PA10 -> FGT5 -> Internet

- FGT5 port3: 172.16.5.1/30
- PA10 ethernet1/1: 172.16.5.2/30
- PA10 ethernet1/2: 192.168.15.1/24
- Win31: 192.168.15.10/24

## Reserved Network

10.0.0.0/8 is reserved for the DHCP network connected to FortiGate port2.

It must not be reused elsewhere in the lab.
