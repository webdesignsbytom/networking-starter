# Networking Starter

## Table of contents

- [Networking Starter](#networking-starter)
  - [Table of contents](#table-of-contents)
  - [IP v4/v6](#ip-v4v6)
  - [Linux files](#linux-files)
  - [Linux / Bash Commands](#linux--bash-commands)
  - [Linux key commands](#linux-key-commands)
  - [Sudo](#sudo)
  - [Permissions](#permissions)
  - [Bash Coding](#bash-coding)
  - [Linux Tools](#linux-tools)
  - [Extension Commands](#extension-commands)
  - [Protocals](#protocals)
  - [Notes](#notes)
  - [Virtual Machines](#virtual-machines)
    - [Securing VM](#securing-vm)
    - [Machines](#machines)
    - [Creating DHCP server](#creating-dhcp-server)
  - [Ports](#ports)
  - [Firewalls](#firewalls)
  - [DNS servers](#dns-servers)
    - [Sharing files](#sharing-files)
  - [SSH Secure Shell](#ssh-secure-shell)
    - [Generate SSH Keys](#generate-ssh-keys)
  - [NMAP](#nmap)
    - [Tools](#tools)
  - [Important Data](#important-data)
  - [Procesess](#procesess)
  - [Spidering](#spidering)
  - [Installing systems](#installing-systems)
  - [User Permissions](#user-permissions)
  - [Apache Web Server](#apache-web-server)
  - [Email](#email)
  - [Routers](#routers)
  - [NAT Network Address Translation](#nat-network-address-translation)
  - [WAN](#wan)
  - [Important Websites](#important-websites)
  - [Notes](#notes-1)
  - [Pen Test Methodology](#pen-test-methodology)
  - [STRIDE](#stride)

## IP v4/v6

Static = manually set
Dynamic = changed as need by dhcp server

Ip addresses

IPv4 Classes:
<img src='./assets/images/ipv4_addresses_class.png' alt='ip' />

IPv4 is a 32 bit binary number in 4 octets.
They have subnet masks to increase there number.

`ifconfig eth0 10.10.10.1` enter a new ip address to a route at eth0

## Linux files

1. Bin - Binary files, contains commands like ls and cat.
2. sbin - Admin binary files - single user mode as root user access.
3. boot - boot menu - os and boot loaders
4. cdrom - legacy
5. dev - Devices - where they live. In linux everything is a file including disc i.e sda file. and webcam and keyboard.
6. etc - etcetera - where config files are stored for system wide resources ie apt. Not a user defined
7. lib/32/64 - Library storage - bin and sbin require this
8. media - Drives - flashdrives, external hardrive
9. mnt - Media for mounting manually
10. opt - store your manually create system files
11. proc - Process - sudo files for system prcess and resources - `cat /proc/cpuinfo` get data
12. root - Root users home folder - different to home - need root permissions to store here
13. run - Newer - Temp Fs file system that runs in RAM - resets and doesnt save after shutdown
14. snap - Snap packages are stored here, used in umbuntu
15. srv - Service directory - if you run a server the access files will be stored here - better security due to root position
16. sys - System folder - interact with the Kernal - change settings on graphic cards - created on boot up - nothing install
17. tmp - Temporary - temp files stored for sessions
18. usr - User Application Space - apps will be install used by user - unlike bin which is used by system, non essential files
19. var - Variable - files and directories that will grow in size - crash logs, logs, databases, tmp
20. home
    1. Store personal files
    2. Each user has there own
    3. Contains many dirs that store app settings
    4. Hidden dirs start with a .
    5. ls -a for all files to be shown including hidden
    6.

## Linux / Bash Commands

- `sudo su` Log in as Super user (root)
- `touch file.js` Create file
- `echo var tom = 10 > file.js` Write to file
- `cat file.js` Read file
- `shred file.js` Encode file prevent being seen in text by cat
- `nano file.js` Edit file and to save press `ctrl + x + y + Enter` nano is a text editor
- `cp file.js ./location/file.js` Copy file
- `mv file.js ./location/file.js` Move file
- `rm file.js` Remove/delete file
- `rmdir directory/` Remove/delete directory `-r` for recursive
- `man` Get info on command + a command i.e `man cat`
- `wget http://` Get data from the internet using url
- `curl http://localhost: > file.txt` Get and save
- `find / -name "*Search term*"` Find files the slash is where to search meaning everywhere
- `ifconfig` Get ip address `ip a` NEW
- `which cat` Find command root location
- `date` get date - day month calanderday time am/pm utc year
- `grep` Search for text in files - By default grep is case sensitive
- Check IP `ping 8.8.8.8`
- Check ip data `route`
- Change permissions to all `chmod 777 file.txt`
- List files and permissions `ls -la`
- APR check connections `arp -a`
- Start and stop services `service` i.e web server, ssh
- Update linux `sudo apt update`
- Open multi terminal `tilix`
- Search for a word `grep -i "word" file.txt` the -i means case insensitive
- `wc -l file.txt` word count per line
-

## Linux key commands

- Create a file an edit in GNU `nano file.txt`
- `ls` Read file
  - `ls -a` hidden files `ls -al` hidden files in a table `ls- ah` human readable table
  - `ls -lR Desktop` search for all files and sub directories in a location i.e Desktop.
- File read `impacket-secretdump -sam sam.save -system system.save LOCAL`
- `find` Find has many options `find -size 1024c`
- `!` do the opposite `! -executable` find not executable file
- `file` can find human readable files
  - File Sizes
  - `b` = 513 byte blcok
  - `c` = bytes
  - `w` = two-bye words
  - `k` = 1024 bytes 1KB
  - `M` = 1048576 bytes 1MB
  - `G` = 1073741824 bytes 1GB
- `sort` This command sorts the lines of text in ascending order. This is necessary to group identical lines together.
- `uniq -u` The uniq command is used to filter out duplicate lines. The -u option tells it to only display lines that occur once in the sorted input. So, it will output the line that occurs only once in the sorted file.
- `cat data.txt | sort | uniq -u` how to search for unique lines
- `base64 -d -i input_file.txt` decode base64
- `ip`
  - `ip a`
  - `ip r`
- `grep` search texet commands - By default grep is case sensitive
  - `-v` Exclude
  - `-n` give line where item was found
  - `-c` count results
  - `-i` dont care about case sensitivity.
  - `-r` recursive, search all subfiles
    `grep Human listpfspeciies.txt` find all human entries
    `grep -v Human listpfspeciies.txt` exclude all human entries
    `grep -n Human listpfspeciies.txt` find all human entries and get LINE NUMBER
    `grep -c Human listpfspeciies.txt` count istances of the word
    `grep -i human listpfspeciies.txt` find all despite case
    `grep -r "example" /path/to/directory`
- `net.show` show all network connections
- `net.recon on` find devices
- `net.recon off` find devices
- `telnet up port number` `55443` default port
- `msfconsole` Start METASPLOIT - use commands in a new terminal
  - `top` use in a new terminal, displays processes using the highest cpu

## Sudo

What is sudo? Super User Do
Run a command but elevated level of permissions
We have a 'Sudoer file' that list permissions

- `sudo su` Log in as Super user (root)

## Permissions

`drwxr-xr-x`
d= directory
r = read
w = write
x = execute
u = user
first `r-x` is group priveledges
second `r-x` is user priveledges
`chmod` change permissions
`chmod u+x` user execute
`chmod 777` all perms

## Bash Coding

FOR LOOP: 'for > do > done' `for veg in carrot pee potato     <br/> do eacho $veg      <br/> done`
`bash -s` allows passing arguments to the script.

## Linux Tools

use `apt` to install

1. `cupp` cupp
2. `sshpass`
3. `yeelight` connect to e light bulbs
4. `tellnet`
5. `twint` twitter intelligence - finds data on people from twitter
6. `nslookup [IPADDRESS]`
7. `Wappalyzer` is a technology profiler that shows you what websites are built with. Browser extension.
8. `sqlmap` autosql injection tool
9. `beef` browser explotation frame work `sudo ./beef` look for hook.js and its url
10. `metasploit` starts with `msfconsole`

## Extension Commands

- `nmap` map all the ports
- `cupp` generate data

## Protocals

A set of rules and messages that form an internet standard

- ARP Address resolution Protocl
- FTP File Transfer Protocol - Allows a file a file transfer from client to server
- SMTP Simple Mail Transfer Protocol - A email protoclol
- HTTP Hyper Text Transport Protocol - web transfer get requests and such
- SSL Secure Sockets Layer
- TSL Transport Layer Security
- HTTPS - This is a HTTP conversation in a sercure tunnel build using SSL and TLS.
-

## Notes

- DHCP server - this hands out IP addresses across all network devices. Its how machines can talk.
- ICMP?

## Virtual Machines

Creating a virtual machine requires

### Securing VM

1. Go to settings
2. Network settings
3. Change net adapeter to 'Interneral Network'
4. Name it - use this for DHCP i.e catgod
5. Ad a DHCP server - this hands out IP addresses

This create and internal network just for stuff you connect to.
Do this to both your vm and virtual server.
This isolates them

Creating a DHCP server

1. Open CMD in real machine
2. `cd /Program Files/Oracle/VirtualBox`
3. `vboxmanage dhcpserver add --network=catgod --server-ip=10.38.1.1 --lower-ip=10.38.1.110 --upper-ip=10.38.1.120 --netmask=255.255.255.0 --enable` can be any ip address you choose

### Machines

- Oracle VM Virtual machines
- Download and install operating systems on this which will partition your hard drive.

!! You must go into bios settings and cpu config to set virtual machine to true.

1. Downloading an operating system i.e linux, windows
2. Using Virtual Box to run the virtual machine.
3. Installing the virtual machine extensions from the website

IMPORTANT

To make your network secure. In Oracle. Right click your vm goto - settings - network - and set your
Network Attached to property to 'Internal Network'
Name the network you create and connect things to this i.e. server

### Creating DHCP server

1. Open command prompt
2. `cd /Program Files/Oracle/VirtualBox`
3. `vboxmanage dhcpserver add --network=SERVER-NAME --server-ip=10.38.1.1 --lower-ip=10.38.1.110 --upper-ip=10.38.1.120 --netmask=255.255.255.0 --enable`

Static IP assignment is only good for tiny home servers
Static IP are asinged to each host.

What is DHCP?
A server that asigns IP addresses dynaically.
When a PC boots up, it sends out a 'Discovery packet'
Usually sent to the broadcast address (255.255.255.67)

The DHCP responds with a 'Offer Packet', which is sent to the MAC address of the computer using a port
The PC then returns a 'Request packet' to get an IP config from the server
Then DHCP then sends back and 'Acknoledgement packet' contain the ip config.
The PC adjusts to these settings

<img src='./assets/images/DHCP server.png' alt='dhcp' />

Ports used:
Broadcast UDP 67
Respnse is on 68

Address scope - Admin configs the IP range that is handed out by DHCP

Address reservations - admin reserved ip addresses for specific MAC addresses, and devices that always need the same IP such as servers and routers.

Lease - Config params

## Ports

Protocol Port Number Description

File Transfer Protocol (FTP) 21 This protocol is used by a file-sharing application built on a client-server model, meaning you can download files from a central location.

Secure Shell (SSH) 22 This protocol is used to securely login to systems via a text-based interface for management.

HyperText Transfer Protocol (HTTP) 80 This protocol powers the World Wide Web (WWW)! Your browser uses this to download text, images and videos of web pages.

HyperText Transfer Protocol Secure (HTTPS) 443 This protocol does the exact same as above; however, securely using encryption.

Server Message Block (SMB) 445 This protocol is similar to the File Transfer Protocol (FTP); however, as well as files, SMB allows you to share devices like printers.

Remote Desktop Protocol (RDP) 3389 This protocol is a secure means of logging in to a system using a visual desktop interface (as opposed to the text-based limitations of the SSH protocol).

## Firewalls

`iptables -I INPUT -p tcp --dport <port> -j REJECT --reject-with tcp-reset`

A firewall is a device within a network responsible for determining what traffic is allowed to enter and exit. Think of a firewall as border security for a network. An administrator can configure a firewall to permit or deny traffic from entering or exiting a network based on numerous factors such as:

Where the traffic is coming from? (has the firewall been told to accept/deny traffic from a specific network?)
Where is the traffic going to? (has the firewall been told to accept/deny traffic destined for a specific network?)
What port is the traffic for? (has the firewall been told to accept/deny traffic destined for port 80 only?)
What protocol is the traffic using? (has the firewall been told to accept/deny traffic that is UDP, TCP or both?)
Firewalls perform packet inspection to determine the answers to these questions.

Firewalls come in all shapes and sizes. From dedicated pieces of hardware (often found in large networks like businesses) that can handle a magnitude of data to residential routers (like at your home!) or software such as Snort, firewalls can be categorised into 2 to 5 categories.

Firewall Category Description

- Stateful
  This type of firewall uses the entire information from a connection; rather than inspecting an individual packet, this firewall determines the behaviour of a device based upon the entire connection.

This firewall type consumes many resources in comparison to stateless firewalls as the decision making is dynamic. For example, a firewall could allow the first parts of a TCP handshake that would later fail.

If a connection from a host is bad, it will block the entire device.

- Stateless
  This firewall type uses a static set of rules to determine whether or not individual packets are acceptable or not. For example, a device sending a bad packet will not necessarily mean that the entire device is then blocked.

Whilst these firewalls use much fewer resources than alternatives, they are much dumber. For example, these firewalls are only effective as the rules that are defined within them. If a rule is not exactly matched, it is effectively useless.

However, these firewalls are great when receiving large amounts of traffic from a set of hosts (such as a Distributed Denial-of-Service attack)

## DNS servers

What is DNS - Domain Name System
This is the process of asigning names to ip addreses i.e google.com

`www.` = serverice
`google.` the local domain
`com` the top level domain

Types of DNS

Local - A sever on a local networks that maps FQDN to IP addresses
Top level domain servers - TLD servers - records of top level domains
Root server - Contains the records of TLD servers.

Authoritative DNS - specifically configure to contain requested data. Comes from a DNS server with an original record
Non-Auth - Responds with DNS to another DNS server. Its a seconds or third hand response.

DNS Records

- A Record - Maps host name to IPv4
- AAAA Record - IPv6
- CNAME - Maps alias naes to hostnames - having multiple top levels for one site. There is a canonical name.
- PTR - Records a connonical name
- MX record - Maps an emial server.

Dynamis DNS (DDNS)
Light weight and immediately upodating. Changing name servers without an admin.
Software will monitor the IP address of the system and updates if it changes.
Usefull if a access IP is dynamic.

DNS isn't just for websites though, and multiple types of DNS record exist. We'll go over some of the most common ones that you're likely to come across.

A Record

These records resolve to IPv4 addresses, for example 104.26.10.229

AAAA Record

These records resolve to IPv6 addresses, for example 2606:4700:20::681a:be5

CNAME Record

These records resolve to another domain name, for example, TryHackMe's online shop has the subdomain name store.tryhackme.com which returns a CNAME record shops.shopify.com. Another DNS request would then be made to shops.shopify.com to work out the IP address.

MX Record

These records resolve to the address of the servers that handle the email for the domain you are querying, for example an MX record response for tryhackme.com would look something like alt1.aspmx.l.google.com. These records also come with a priority flag. This tells the client in which order to try the servers, this is perfect for if the main server goes down and email needs to be sent to a backup server.

TXT Record

TXT records are free text fields where any text-based data can be stored. TXT records have multiple uses, but some common ones can be to list servers that have the authority to send an email on behalf of the domain (this can help in the battle against spam and spoofed email). They can also be used to verify ownership of the domain name when signing up for third party services.

An authoritative DNS server is the server that is responsible for storing the DNS records for a particular domain name and where any updates to your domain name DNS records would be made. Depending on the record type, the DNS record is then sent back to the Recursive DNS Server, where a local copy will be cached for future requests and then relayed back to the original client that made the request. DNS records all come with a TTL (Time To Live) value. This value is a number represented in seconds that the response should be saved for locally until you have to look it up again. Caching saves on having to make a DNS request every time you communicate with a server.

### Sharing files

- Create a shared file
- Go to Oracle settings bar click device
- Add to machine folder a new one directed to the shring file.
- Click atio mount and make perminent

## SSH Secure Shell

Secure Shell was made to protect your connection to machines and servers on networks.
It is a protocol like http
Encrypting data sent over the internet, so packet sniffers cannot get the important information.
Can be used for creating and managing files wirelessly.

When you intiiation an SSH connection. First you make a TCP connection and send a payload.

Packet Length | 4 bytes
Padding | 1 byte
Payload | x bytes
Padding | Decoy data
Auth Code | Authenticate packets

This is then encrypted and only the packet length can be seen by hackers.

You can authenticate by using passwords or SSH keys that authorise you. `ssh tom@1.1.1.1 password`

### Generate SSH Keys

`ssh-keygen` generates a key it creates a public and private key.
They are created in a hidden folder called ./ssh
Private key - `~/.ssh/id_rsa`
Public key - `~/.ssh/id_rsa.pub`

On your server you will also have a SSH folder and you add the same key here.

## NMAP

`sudo nmap -sS -T4 10.38.1.110` scan ip
If you find a ip address attached to this i.e. `10.38.1.110` try in your browser `10.38.1.111`
`10.38.1.111/robots.txt` is a way to view data

Firewalls will pick up on nmap scans

### Tools

- Low orbit ion canon
- Burb Suite - included in kali
- anonsurf `sudo git clone https://github.com/Und3rf10w/kali-anonsurf`
- poweshell-empire `sudo apt install poweshell-empire` followed by `sudo powershell-empire server`

## Important Data

- MAC Address - 48 BIT, 12 HEX DIGITS i.e.94-65-9C-8A-E5 - part of data links - Hop To Hop delivery
- IP Address - 32 BIT, 4 Octets of 255.255.255.255 - End to end delivery
- TCP Address - Creates ports for you ip address to open connections on. Ports 1 - 65353 are available.
  - Port 60 is defualt HTTP
  - Port 443 is defualt HTTPS
- Subnet Mask - Like an ip 225.225.225.0 they are part of subnetting for networks inside networks.
- DNS - Covert a domain name into an ip address
- ARP Address Resolution Protocol -
  - ARP Cache - Hosts have a cache

## Procesess

## Spidering

Spidering is the process of mapping a web app to find links and functions, files and forms, Requests and responses.
Automatic spidering through dev suites

## Installing systems

Linux uses Repos instead of normal files

## User Permissions

Create a user or load a user with the lowest priviledges availabel.
You can find other users on this system and view there priviledges - allowing you to know what profile you want to control.

`cat /etc/passwd`
As A sudo
`sudo cat /etc/shadow`

## Apache Web Server

A free static web server avaialble on kali

- `sudo su` Log in as Super user (root)
- `sudo apt apache2`
- `sudo service apache2 start`
- `sudo service apache2 status`
- `sudo service apache2 stop`

## Email

What data can you get from an Email
What can you do responding to and email

## Routers

As a general rule, broadcasts cant be sent out of a router

## NAT Network Address Translation

Non routable IP addresses.
To conserve the supply of IPv4 addresses they took a number of them away and made them non-routable  
NAT will convert private IPs into routable Public IPs.

SNAT Static NAT - each private IP is routed to a public IP. The Router will control when info can cross. It is not great for scaling.
Dynamic NAT - Dynamically assigning routable IP addresses from a Pool of available IPs.

PAT - Port Address Translation
PAT is a type of DNAT designed to increase scalablility.

## WAN

- Public switch phone network
- Broadband cable
- Fibreoptics

## Important Websites

1. Overthewire
2. Hackthebox

## Notes

JA3 client

## Pen Test Methodology

Information Gathering
This stage involves collecting as much publically accessible information about a target/organisation as possible, for example, OSINT and research.
Note: This does not involve scanning any systems.

Enumeration/Scanning This stage involves discovering applications and services running on the systems. For example, finding a web server that may be potentially vulnerable.

Exploitation This stage involves leveraging vulnerabilities discovered on a system or application. This stage can involve the use of public exploits or exploiting application logic.

Privilege Escalation Once you have successfully exploited a system or application (known as a foothold), this stage is the attempt to expand your access to a system. You can escalate horizontally and vertically, where horizontally is accessing another account of the same permission group (i.e. another user), whereas vertically is that of another permission group (i.e. an administrator).

Post-exploitation
This stage involves a few sub-stages:

1. What other hosts can be targeted (pivoting)
2. What additional information can we gather from the host now that we are a privileged user
3. Covering your tracks
4. Reporting

The goal of this stage is to get a complete picture of your target. A penetration tester will try to identify user accounts, machines on their network, network shares, applications etc. Information gathered from stage 2, and the engagement scope document will help in enumerating your target.

## STRIDE

(Spoofing identity, Tampering with data, Repudiation threats, Information disclosure, Denial of Service and Elevation of privileges) and PASTA (Process for Attack Simulation and Threat Analysis) infosec never tasted so good!. Let's detail STRIDE below. STRIDE, authored by two Microsoft security researchers in 1999 is still very relevant today. STRIDE includes six main principles, which I have detailed in the table below:

Principle Description
Spoofing
This principle requires you to authenticate requests and users accessing a system. Spoofing involves a malicious party falsely identifying itself as another.

Access keys (such as API keys) or signatures via encryption helps remediate this threat.

Tampering
By providing anti-tampering measures to a system or application, you help provide integrity to the data. Data that is accessed must be kept integral and accurate.

For example, shops use seals on food products.

Repudiation This principle dictates the use of services such as logging of activity for a system or application to track.
Information Disclosure Applications or services that handle information of multiple users need to be appropriately configured to only show information relevant to the owner.
Denial of Service Applications and services use up system resources, these two things should have measures in place so that abuse of the application/service won't result in bringing the whole system down.
Elevation of Privilege This is the worst-case scenario for an application or service. It means that a user was able to escalate their authorization to that of a higher level i.e. an administrator. This scenario often leads to further exploitation or information disclosure.

A breach of security is known as an incident. And despite all rigorous threat models and secure system designs, incidents do happen. Actions taken to resolve and remediate the threat are known as Incident Response (IR) and are a whole career path in cybersecurity.

Incidents are classified using a rating of urgency and impact. Urgency will be determined by the type of attack faced, where the impact will be determined by the affected system and what impact that has on business operations.

An incident is responded to by a Computer Security Incident Response Team (CSIRT) which is prearranged group of employees with technical knowledge about the systems and/or current incident. To successfully solve an incident, these steps are often referred to as the six phases of Incident Response that takes place, listed in the table below:

Action Description
Preparation Do we have the resources and plans in place to deal with the security incident?
Identification Has the threat and the threat actor been correctly identified in order for us to respond to?
Containment Can the threat/security incident be contained to prevent other systems or users from being impacted?
Eradication Remove the active threat.
Recovery Perform a full review of the impacted systems to return to business as usual operations.
Lessons Learned What can be learnt from the incident? I.e. if it was due to a phishing email, employees should be trained better to detect phishing emails.
