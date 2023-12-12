# Tools

A list and explanation of the basic networking tools available.

## Table of contents

- [Tools](#tools)
  - [Table of contents](#table-of-contents)
  - [Burp Suite](#burp-suite)
    - [Proxy](#proxy)
  - [Wireshark](#wireshark)
  - [pdfinfo](#pdfinfo)
  - [Traceroute](#traceroute)
  - [exiftool](#exiftool)
  - [NMap](#nmap)
    - [Powers](#powers)
  - [Metasploit](#metasploit)
    - [Payloads](#payloads)
    - [MFS console](#mfs-console)
  - [FTP](#ftp)
  - [Hydra](#hydra)
  - [Enum4Linu](#enum4linu)
  - [Twint](#twint)
  - [Searchsploit](#searchsploit)
  - [NFS](#nfs)
    - [Root Shell Acceess](#root-shell-acceess)

## Burp Suite

Burp suite: A web application security testing framework

Features:

- Proxy
- Repeater
- Intruder
- Decoder
- Comparer
- Sequencer

Proxy: The Burp Proxy is the most renowned aspect of Burp Suite. It enables interception and modification of requests and responses while interacting with web applications.

Repeater: Another well-known feature. Repeater allows for capturing, modifying, and resending the same request multiple times. This functionality is particularly useful when crafting payloads through trial and error (e.g., in SQLi - Structured Query Language Injection) or testing the functionality of an endpoint for vulnerabilities.

Intruder: Despite rate limitations in Burp Suite Community, Intruder allows for spraying endpoints with requests. It is commonly utilized for brute-force attacks or fuzzing endpoints.

Decoder: Decoder offers a valuable service for data transformation. It can decode captured information or encode payloads before sending them to the target. While alternative services exist for this purpose, leveraging Decoder within Burp Suite can be highly efficient.

Comparer: As the name suggests, Comparer enables the comparison of two pieces of data at either the word or byte level. While not exclusive to Burp Suite, the ability to send potentially large data segments directly to a comparison tool with a single keyboard shortcut significantly accelerates the process.

Sequencer: Sequencer is typically employed when assessing the randomness of tokens, such as session cookie values or other supposedly randomly generated data. If the algorithm used for generating these values lacks secure randomness, it can expose avenues for devastating attacks.

### Proxy

The proxy is the main tool for packet capturing.
When running any website you visit will have the packets monitored

The Burp Proxy is the most fundamental (and most important!) of the tools available in Burp Suite. It allows us to capture requests and responses between ourselves and our target. These can then be manipulated or sent to other tools for further processing before being allowed to continue to their destination.

## Wireshark

## pdfinfo

## Traceroute

## exiftool

Photo EXIF Data
EXIF stands for Exchangeable Image File Format; it is a standard for saving metadata to image files. Whenever you take a photo with your smartphone or with your digital camera, plenty of information gets embedded in the image. The following are examples of metadata that can be found in the original digital images:

Camera model / Smartphone model
Date and time of image capture
Photo settings such as focal length, aperture, shutter speed, and ISO settings
Because smartphones are equipped with a GPS sensor, finding GPS coordinates embedded in the image is highly probable. The GPS coordinates, i.e., latitude and longitude, would generally show the place where the photo was taken.

There are many online and offline tools to read the EXIF data from images. One command-line tool is exiftool. ExifTool is used to read and write metadata in various file types, such as JPEG images. (The AttackBox already has exiftool installed; however, if you are using Kali Linux and don’t have exiftool installed, you can install it using sudo apt install libimage-exiftool-perl.) In the following terminal window, we executed exiftool IMAGE.jpg to read all the EXIF data embedded in this image.

## NMap

Use `scanme.nmap.org` to test nmap functionality

NMap is a powerful port scanning tool to get information about the target.

When port scanning with Nmap, there are three basic scan types. These are:

`nmap $ip -p-` Basic scan all ports
`nmap $ip -A -vv` Basic scan with verpbose and agressive - will take longer with -A
`nmap $ip -A -p- -vv` now scanning all ports
`nmap $ip -p 21 -sV` run on the port found
`nmap -T4 -sC -sV -Pn $ip`

TCP Connect Scans (-sT)
SYN "Half-open" Scans (-sS)
UDP Scans (-sU)
Additionally there are several less common port scan types, some of which we will also cover (albeit in less detail). These are:

TCP Null Scans (-sN)
TCP FIN Scans (-sF)
TCP Xmas Scans (-sX) `nmap -p1-999 -sX 10.10.53.153 -vv`

`export ip=10.10.0.0` # change it to your target machine's ip
`nmap -p1-10000 -sS <IP> -vv -Pn` tcp syn scan
`nmap --script=ftp-anon -p21 <IP> -vv`

`nmap -A -oN nmap-$ip.out -p- $ip` run scan and save output
`cat nmap-$ip.out | grep open` print open ports from output

Let’s run an nmap scan. As a reminder, these are what the flags mean:

`-sV`: service/version scan This can be valuable for security assessments, as it helps to identify potential vulnerabilities associated with specific software versions.
`--script vuln`: run a script scan with the vuln scripts.
`-oN nmap-$ip.out`: output in normal format to the file

`-p` is used to specify a port range. -p scans all 65534 ports. By default (without -p ) nmap scans only the 1000 most common ports.
`-A` agressive
`-v -vv` verbopse or double verbose
`-sn` switch tells Nmap not to scan any ports

Most of these (with the exception of UDP scans) are used for very similar purposes, however, the way that they work differs between each scan. This means that, whilst one of the first three scans are likely to be your go-to in most situations, it's worth bearing in mind that other scan types exist.

There are many categories available. Some useful categories include:

safe:- Won't affect the target
intrusive:- Not safe: likely to affect the target
vuln:- Scan for vulnerabilities
exploit:- Attempt to exploit a vulnerability
auth:- Attempt to bypass authentication for running services (e.g. Log into an FTP server anonymously)
brute:- Attempt to bruteforce credentials for running services
discovery:- Attempt to query running services for further information about the network (e.g. query an SNMP server).

The following switches are of particular note:

-f:- Used to fragment the packets (i.e. split them into smaller pieces) making it less likely that the packets will be detected by a firewall or IDS.
An alternative to -f, but providing more control over the size of the packets: --mtu <number>, accepts a maximum transmission unit size to use for the packets sent. This must be a multiple of 8.
--scan-delay <time>ms:- used to add a delay between packets sent. This is very useful if the network is unstable, but also for evading any time-based firewall/IDS triggers which may be in place.
--badsum:- this is used to generate in invalid checksum for packets. Any real TCP/IP stack would drop this packet, however, firewalls may potentially respond automatically, without bothering to check the checksum of the packet. As such, this switch can be used to determine the presence of a firewall/IDS.

### Powers

TARGET SPECIFICATION:
Can pass hostnames, IP addresses, networks, etc.
Ex: scanme.nmap.org, microsoft.com/24, 192.168.0.1; 10.0.0-255.1-254
-iL <inputfilename>: Input from list of hosts/networks
-iR <num hosts>: Choose random targets
--exclude <host1[,host2][,host3],...>: Exclude hosts/networks
--excludefile <exclude_file>: Exclude list from file

HOST DISCOVERY:
-sL: List Scan - simply list targets to scan
-sn: Ping Scan - disable port scan
-Pn: Treat all hosts as online -- skip host discovery
-PS/PA/PU/PY[portlist]: TCP SYN/ACK, UDP or SCTP discovery to given ports
-PE/PP/PM: ICMP echo, timestamp, and netmask request discovery probes
-PO[protocol list]: IP Protocol Ping
-n/-R: Never do DNS resolution/Always resolve [default: sometimes]
--dns-servers <serv1[,serv2],...>: Specify custom DNS servers
--system-dns: Use OS's DNS resolver
--traceroute: Trace hop path to each host

SCAN TECHNIQUES:
-sS/sT/sA/sW/sM: TCP SYN/Connect()/ACK/Window/Maimon scans
-sU: UDP Scan
-sN/sF/sX: TCP Null, FIN, and Xmas scans
--scanflags <flags>: Customize TCP scan flags
-sI <zombie host[:probeport]>: Idle scan
-sY/sZ: SCTP INIT/COOKIE-ECHO scans
-sO: IP protocol scan
-b <FTP relay host>: FTP bounce scan
PORT SPECIFICATION AND SCAN ORDER:
-p <port ranges>: Only scan specified ports
Ex: -p22; -p1-65535; -p U:53,111,137,T:21-25,80,139,8080,S:9
--exclude-ports <port ranges>: Exclude the specified ports from scanning
-F: Fast mode - Scan fewer ports than the default scan
-r: Scan ports consecutively - don't randomize
--top-ports <number>: Scan <number> most common ports
--port-ratio <ratio>: Scan ports more common than <ratio>

SERVICE/VERSION DETECTION:
-sV: Probe open ports to determine service/version info
--version-intensity <level>: Set from 0 (light) to 9 (try all probes)
--version-light: Limit to most likely probes (intensity 2)
--version-all: Try every single probe (intensity 9)
--version-trace: Show detailed version scan activity (for debugging)

SCRIPT SCAN:
-sC: equivalent to --script=default
--script=<Lua scripts>: <Lua scripts> is a comma separated list of
directories, script-files or script-categories
--script-args=<n1=v1,[n2=v2,...]>: provide arguments to scripts
--script-args-file=filename: provide NSE script args in a file
--script-trace: Show all data sent and received
--script-updatedb: Update the script database.
--script-help=<Lua scripts>: Show help about scripts.
<Lua scripts> is a comma-separated list of script-files or
script-categories.

OS DETECTION:
-O: Enable OS detection
--osscan-limit: Limit OS detection to promising targets
--osscan-guess: Guess OS more aggressively

TIMING AND PERFORMANCE:
Options which take <time> are in seconds, or append 'ms' (milliseconds),
's' (seconds), 'm' (minutes), or 'h' (hours) to the value (e.g. 30m).
-T<0-5>: Set timing template (higher is faster)
--min-hostgroup/max-hostgroup <size>: Parallel host scan group sizes
--min-parallelism/max-parallelism <numprobes>: Probe parallelization
--min-rtt-timeout/max-rtt-timeout/initial-rtt-timeout <time>: Specifies
probe round trip time.
--max-retries <tries>: Caps number of port scan probe retransmissions.
--host-timeout <time>: Give up on target after this long
--scan-delay/--max-scan-delay <time>: Adjust delay between probes
--min-rate <number>: Send packets no slower than <number> per second
--max-rate <number>: Send packets no faster than <number> per second

FIREWALL/IDS EVASION AND SPOOFING:
-f; --mtu <val>: fragment packets (optionally w/given MTU)
-D <decoy1,decoy2[,ME],...>: Cloak a scan with decoys
-S <IP_Address>: Spoof source address
-e <iface>: Use specified interface
-g/--source-port <portnum>: Use given port number
--proxies <url1,[url2],...>: Relay connections through HTTP/SOCKS4 proxies
--data <hex string>: Append a custom payload to sent packets
--data-string <string>: Append a custom ASCII string to sent packets
--data-length <num>: Append random data to sent packets
--ip-options <options>: Send packets with specified ip options
--ttl <val>: Set IP time-to-live field
--spoof-mac <mac address/prefix/vendor name>: Spoof your MAC address
--badsum: Send packets with a bogus TCP/UDP/SCTP checksum

OUTPUT:
-oN/-oX/-oS/-oG <file>: Output scan in normal, XML, s|<rIpt kIddi3,
and Grepable format, respectively, to the given filename.
-oA <basename>: Output in the three major formats at once
-v: Increase verbosity level (use -vv or more for greater effect)
-d: Increase debugging level (use -dd or more for greater effect)
--reason: Display the reason a port is in a particular state
--open: Only show open (or possibly open) ports
--packet-trace: Show all packets sent and received
--iflist: Print host interfaces and routes (for debugging)
--append-output: Append to rather than clobber specified output files
--resume <filename>: Resume an aborted scan
--stylesheet <path/URL>: XSL stylesheet to transform XML output to HTML
--webxml: Reference stylesheet from Nmap.Org for more portable XML
--no-stylesheet: Prevent associating of XSL stylesheet w/XML output

MISC:
-6: Enable IPv6 scanning
-A: Enable OS detection, version detection, script scanning, and traceroute
--datadir <dirname>: Specify custom Nmap data file location
--send-eth/--send-ip: Send using raw ethernet frames or IP packets
--privileged: Assume that the user is fully privileged
--unprivileged: Assume the user lacks raw socket privileges
-V: Print version number
-h: Print this help summary page.

EXAMPLES:
nmap -v -A scanme.nmap.org
nmap -v -sn 192.168.0.0/16 10.0.0.0/8
nmap -v -iR 10000 -Pn -p 80

## Metasploit

`msfconsole` to run

The Metasploit Framework is a set of tools that allow information gathering, scanning, exploitation, exploit development, post-exploitation, and more. While the primary usage of the Metasploit Framework focuses on the penetration testing domain, it is also useful for vulnerability research and exploit development.

Before diving into modules, it would be helpful to clarify a few recurring concepts: vulnerability, exploit, and payload.

- Exploit: A piece of code that uses a vulnerability present on the target system.
- Vulnerability: A design, coding, or logic flaw affecting the target system. The exploitation of a vulnerability can result in disclosing confidential information or allowing the attacker to execute code on the target system.
- Payload: An exploit will take advantage of a vulnerability. However, if we want the exploit to have the result we want (gaining access to the target system, read confidential information, etc.), we need to use a payload. Payloads are the code that will run on the target system.

The main components of the Metasploit Framework can be summarized as follows;

msfconsole: The main command-line interface.
Modules: supporting modules such as exploits, scanners, payloads, etc.
Tools: Stand-alone tools that will help vulnerability research, vulnerability assessment, or penetration testing. Some of these tools are msfvenom, pattern_create and pattern_offset. We will cover msfvenom within this module, but pattern_create and pattern_offset are tools useful in exploit development which is beyond the scope of this module.

`Navigation`.
`Help`: Displays a list of commands.
`Search`: Find a module by name, CVE, etc.
`Use`: Loads a module by name/number.
`Back`: Unloads the current module.
`Exit`: Closes MSFConsole.
`Module` Configuration and Usage.
`Info`: Provides useful information about a module.
`show`
`options`

1. `msfconsole` load metasploit
2. `search NAME` search for a module
3. `use NUMBER` use found module
4.

### Payloads

Payloads are codes that will run on the target system.

Exploits will leverage a vulnerability on the target system, but to achieve the desired result, we will need a payload. Examples could be; getting a shell, loading a malware or backdoor to the target system, running a command, or launching calc.exe as a proof of concept to add to the penetration test report. Starting the calculator on the target system remotely by launching the calc.exe application is a benign way to show that we can run commands on the target system.

Running command on the target system is already an important step but having an interactive connection that allows you to type commands that will be executed on the target system is better. Such an interactive command line is called a "shell". Metasploit offers the ability to send different payloads that can open shells on the target system.

Terminal
root@ip-10-10-135-188:/opt/metasploit-framework/embedded/framework/modules# tree -L 1 payloads/
payloads/
├── adapters
├── singles
├── stagers
└── stages

4 directories, 0 files
You will see four different directories under payloads: adapters, singles, stagers and stages.

Adapters: An adapter wraps single payloads to convert them into different formats. For example, a normal single payload can be wrapped inside a Powershell adapter, which will make a single powershell command that will execute the payload.
Singles: Self-contained payloads (add user, launch notepad.exe, etc.) that do not need to download an additional component to run.
Stagers: Responsible for setting up a connection channel between Metasploit and the target system. Useful when working with staged payloads. “Staged payloads” will first upload a stager on the target system then download the rest of the payload (stage). This provides some advantages as the initial size of the payload will be relatively small compared to the full payload sent at once.
Stages: Downloaded by the stager. This will allow you to use larger sized payloads.
Metasploit has a subtle way to help you identify single (also called “inline”) payloads and staged payloads.

generic/shell*reverse_tcp
windows/x64/shell/reverse_tcp
Both are reverse Windows shells. The former is an inline (or single) payload, as indicated by the “*” between “shell” and “reverse”. While the latter is a staged payload, as indicated by the “/” between “shell” and “reverse”.

### MFS console

`msfconsole` to launch
`history` see log of user history
`help set` get help
`use` use a something
`show`
`info`
sear
Msfconsole is managed by context; this means that unless set as a global variable, all parameter settings will be lost if you change the module you have decided to use.

`use exploit/windows/smb/ms17_010_eternalblue`
`show options`

## FTP

`ftp $ip` login to ftp
` get PUBLIC_NOTICE.txt -.` download file and open

## Hydra

Hydra is a very fast online password cracking tool, which can perform rapid dictionary attacks against more than 50 Protocols, including Telnet, RDP, SSH, FTP, HTTP, HTTPS, SMB, several databases and much more. Hydra comes by default on both Parrot and Kali, however if you need it, you can find the GitHub here.
The syntax for the command we're going to use to find the passwords is this:

`hydra -t 4 -l <USER> -P /usr/share/wordlists/rockyou.txt -vV $ip ftp`
Let's break it down:

SECTION FUNCTION

hydra Runs the hydra tool

`-t 4` Number of parallel connections per target

`-l [user]` Points to the user who's account you're trying to compromise

`-P [path to dictionary]` Points to the file containing the list of possible passwords

`-vV` Sets verbose mode to very verbose, shows the login+pass combination for each attempt

`[machine IP]` The IP address of the target machine

`ftp / protocol` Sets the protocol

## Enum4Linu

## Twint

Twitter Intelligence:

Can find users and posts based on strings.

You will need
`apt install git`
`apt install python3`
`apt install python3-pip`
`git clone --depth=1 https://github.com/twintproject/twint.git`
`cd twint`
`pip3 install . -r requirements.txt`

- `twint -h` get help
- `twint -u [USERNAME]` scrap twitter for username
- `twint -u [USERNAME] --limit 20`
- `twint -u [USERNAME] -s [KEYWORD]` ssearch for keywords in tweets
- `twint -u [USERNAME] -s [KEYWORD]`

You can import twint into python code modules.

## Searchsploit

`searchsploit`
`searchsploit fuel cms`

Launch the attached virtual machine. If you wish to access the virtual machine via Remote Desktop, use the credentials below.

Machine IP: MACHINE_IP

User: administrator

Password: letmein123!

## NFS

It is important to have this package installed on any machine that uses NFS, either as client or server. It includes programs such as: lockd, statd, showmount, nfsstat, gssd, idmapd and mount.nfs. Primarily, we are concerned with "showmount" and "mount.nfs" as these are going to be most useful to us when it comes to extracting information from the NFS share. If you'd like more information about this package, feel free to read: https://packages.ubuntu.com/jammy/nfs-common.

You can install nfs-common using "sudo apt install nfs-common", it is part of the default repositories for most Linux distributions such as the Kali Remote Machine or AttackBox that is provided to TryHackMe.

`/usr/sbin/showmount -e [IP]` to list the NFS shares

First, use "mkdir /tmp/mount" to create a directory on your machine to mount the share to. This is in the /tmp directory- so be aware that it will be removed on restart.

Then, use the mount command we broke down earlier to mount the NFS share to your local machine. Change directory to where you mounted the share- what is the name of the folder inside?

`sudo mount -t nfs $ip:home /tmp/mount/ -nolock`

### Root Shell Acceess

If this is still hard to follow, here's a step by step of the actions we're taking, and how they all tie together to allow us to gain a root shell:

    NFS Access ->

        Gain Low Privilege Shell ->

            Upload Bash Executable to the NFS share ->

                Set SUID Permissions Through NFS Due To Misconfigured Root Squash ->

                    Login through SSH ->

                        Execute SUID Bit Bash Executable ->

                            ROOT ACCESS

Lets do this!
