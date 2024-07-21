# Hardware in networks

## Switch [Layer 2]

The process of moving data within a network.

Ports: Fast Ethernet and DSL

A smarter version of a hub.

A switch will recieve packets.
The first thing it will do is look at the source MAC address of the NIC.
If a switch does not know where to send a Ethernet Frame, it will send it to all devices until it finds a match.
Once it finds a match it will add the destination MAC address to its list.

An Ethernet switch is a device that is used at Layer 2. When a host sends a message to another host connected to the same switched network, the switch accepts and decodes the frames to read the MAC address portion of the message. A table on the switch, called a MAC address table, contains a list of all the active ports and the host MAC addresses that are attached to them. When a message is sent between hosts, the switch checks to see if the destination MAC address is in the table. If it is, the switch builds a temporary connection, called a circuit, between the source and destination ports. Ethernet switches also allow for sending and receiving frames over the same Ethernet cable simultaneously. This improves the performance of the network by eliminating collisions.

## Router [Layer 3]

The process of moving data between networks.

Routers have a IP address and MAC address

Whats the difference between a router and a host?
RFC = request for comments

A router is anything that forwards packets to anyone but its self.
A host is any node that is not a router.

If Host-A has an IP packet to send to Host-B, and Host-A has determined that Host-B is on a different network. Host-A will encapsulate the IP packet in an Ethernet frame with the destination MAC address of the its default gateway.

Unlike switches, which make their forwarding decision based on the Layer 2 MAC address, routers make their forwarding decision based on the Layer 3 IP address.

## Modem

##
