# Hardware in networks

## Switch

Ports: Fast Ethernet and DSL

A switch will recieve packets.
The first thing it will do is look at the source MAC address of the NIC.
If a switch does not know where to send a Ethernet Frame, it will send it to all devices until it finds a match.
Once it finds a match it will add the destination MAC address to its list.

An Ethernet switch is a device that is used at Layer 2. When a host sends a message to another host connected to the same switched network, the switch accepts and decodes the frames to read the MAC address portion of the message. A table on the switch, called a MAC address table, contains a list of all the active ports and the host MAC addresses that are attached to them. When a message is sent between hosts, the switch checks to see if the destination MAC address is in the table. If it is, the switch builds a temporary connection, called a circuit, between the source and destination ports. Ethernet switches also allow for sending and receiving frames over the same Ethernet cable simultaneously. This improves the performance of the network by eliminating collisions.

## Router

## Modem

##
