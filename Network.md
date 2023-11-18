# Network

## Network Types

1. Peer to pear = 2 devices connected via cable or wifi
   The advantages of peer-to-peer networking:

Easy to set up
Less complex
Lower cost because network devices and dedicated servers may not be required
Can be used for simple tasks such as transferring files and sharing printers
The disadvantages of peer-to-peer networking:

No centralized administration
Not as secure
Not scalable
All devices may act as both clients and servers which can slow their performance

2. Peer-to-Peer Applications = devices acting client and server
   A messaging app would be considiered this type

## Device Types

1. End device = pcs, tables, printers, tv
2. Intermediary device = router, lan, switch, firewall
3. Netowrk media = wireless, lan media, wan media i.e cable and connection types.

4. Modem (Modulator-Demodulator):

Purpose: A modem is responsible for modulating and demodulating analog signals. It converts digital data from a computer or network into an analog signal for transmission over communication lines and demodulates incoming analog signals back into digital data.
Connection: Modems are typically used to connect a local network to the Internet Service Provider (ISP) over various types of communication lines, such as DSL (Digital Subscriber Line) or cable.

5. Router:

Purpose: A router is a device that forwards data packets between different networks. It operates at the network layer of the OSI model and is responsible for determining the best path for data to travel between devices on different networks.
Function: Routers manage the traffic between the local network and the wider internet. They use routing tables to determine the most efficient path for data to reach its destination.

## IPS

The internet service provider is your link to the internet.
They are a network of connected networks.

The interconnection of ISPs that forms the backbone of the internet is a complex web of fiber-optic cables with expensive networking switches and routers that direct the flow of information between source and destination hosts.

## Cable types

1. DSL = provides high bandwidth, always on, connection using existing land-line telephone wires
2. Copper core

## Wireless and celluar

Cellphone services inclde

- Talking / texting
- data - data plan
- wifi - connecting and hotspot
- location services - gps maps
- payments - wireless transfer online and in store

Almost all mobile devices are capable of connecting to Wi-Fi networks.
If your mobile device does not prompt to connect to a Wi-Fi network, the network SSID broadcast may be turned off.
SSID is the name assigned to a wireless network.
Passphrase is what we normally use as the “wireless password”.

## Routers

Parts
Internet => ISP => Eth0 connection => Switch => Mac Address => IP Address => Packet => Connection to device i.e pc laptop

```ls
Internet
└── ISP
    └── Router
        ├── Firewall
        ├── DNS Server
        └── Eth0 connection
            ├── Switch
            │ └── Wireless Access Point (WAP)
            └── Device
                ├── Gateway
                ├── Mac Address
                ├── IP Address
                └── Packet
```

## LAN Wireless Frequencies

<img src="./assets/images/fqchart.png" />

## NAS Network Attached Storage Device

NAS is similar to an external harddrive but it attaches through the network.
They are more than just a hard drive.

Why?

1. Low storage space and one location
2. You cant lose them
3. Access to data from anywhere on any device.
