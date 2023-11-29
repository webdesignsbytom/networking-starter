# Network

## Table of contents

- [Network](#network)
  - [Table of contents](#table-of-contents)
  - [Network Types](#network-types)
  - [Device Types](#device-types)
  - [Protocols](#protocols)
  - [ISP](#isp)
  - [Cable types](#cable-types)
  - [Wireless and celluar](#wireless-and-celluar)
  - [Routers](#routers)
  - [LAN Wireless Frequencies](#lan-wireless-frequencies)
  - [NAS Network Attached Storage Device](#nas-network-attached-storage-device)
  - [Frquencies](#frquencies)
  - [Models](#models)
    - [TCP/IP model](#tcpip-model)
  - [Media](#media)
  - [Ethernet Frame](#ethernet-frame)
    - [Encapsulation](#encapsulation)

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

## Protocols

Protocols govern the communications between devices. Handling the transfer of data and interfaces between the machines.

Ethernet - NIC Network Interface Card - commincate in the same network
IP - Get the address for the destination
TCP - Transmition Control Protocol - Transport the information reliably
HTTP - Application of data governs the transfer of html and web data.

## ISP

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

## Frquencies

Which wireless RF band do IEEE 802.11b/g devices use? 2.5Gh

900 MHz is an FCC wireless technology that was used before development of the 802.11 standards.
900 MHz devices have a larger coverage range than the higher frequencies have and do not require line of sight between devices.
802.11b/g/n/ad devices all operate at 2.4 GHz. 802.11a/n/ac/ad devices operate at 5 GHz
802.11ad devices operate at 60 GHz.

## Models

### TCP/IP model

Applications
Transport
Internet
Network Access

`ifconfig eth0 10.10.10.1` change or `netmask` `broadcast`

## Media

Network media is the way data travels either through wire or wireless interfaces.
The most common is UTP twisted pair cable. A copper ethernet cable colour coded in pairs.
They can be shielded using a mesh of metal around the core

- Common types include Coaxial cable and ethernet cable.
- Fibre optic cabel is a glass or plastic cable. With fibre optic you dont need to wrory about EM interference.

The four main criteria for choosing network media are these:

What is the maximum distance that the media can successfully carry a signal?
What is the environment in which the media will be installed?
What is the amount of data and at what speed must it be transmitted?
What is the cost of the media and installation?

## Ethernet Frame

Netwrok card to netword card transmition.

<img src="./assets/images/ethernetFrame.jpg" />

1. Preamble - Used to get the NIC card insync with the bits being sent to it
2. Start frame deumiter - Tells it that following me will be eathernet frame data
3. Destination Mac Address - destination address of the NIC card it is going to .
4. Source MAC address - source NIC card
5. Length Type - Could be the length of the data (next block) or what type of data it is.
6. Data - the encapsulated data - ipv4 or ipv6 packet of data possibly containing data. TCP or HTTP headers.
7. Frame Check Sequence. The recieving device does error checking in case the signal gets degraded in transmition.

### Encapsulation

Each computer message is encapsulated in a specific format, called a frame, before it is sent over the network. A frame acts like an envelope; it provides the address of the intended destination and the address of the source host. The format and contents of a frame are determined by the type of message being sent and the channel over which it is communicated. Messages that are not correctly formatted are not successfully delivered to or processed by the destination host.

<img src="./assets/images/encapsulation.png" />
<img src="./assets/images/encapsulation2.png" />



