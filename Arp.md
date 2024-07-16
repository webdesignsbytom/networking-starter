# ARP

Address Resolution Protocol

Arp is used when we know the IPv4 address but not the ethernet MAC address

Reesolves IP to MAC mappings

ARP req/res

A set of rules that are an internet standard.

Switches will broadcast a `ARP request` until it find the matching IP address and will return the MAC address


What are two functions of MAC addresses in a LAN?

1. to allow the transfer of frames from source to destination
2. to uniquely identify a node on a network


The IP address is a layer 3 (network layer) address. 
The MAC address is a layer 2 (data link) address. The layer 3 address is a logical address. It will pertain to a single protocol (such as IP, IPX, or Appletalk).

## Commmands

`arp -a` see arp table
`arp -d` delete table