# Networking Starter

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

## Linux Commands

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
- `find / -name "*Search term*"` Find files  the slash is where to search meaning everywhere
- `ifconfig` Get ip address `ip a` NEW   
- `which cat` Find command root location 
- Check IP `ping 8.8.8.8`
- Check ip data `route`
- Change permissions to all `chmod 777 file.txt`
- List files and permissions `ls -la`
- APR check connections `arp -a`
- Start and stop services `service` i.e web server, ssh
- Update linux `sudo apt update`
- Open multi terminal `tilix`
- Search for a word `grep -i "word" file.txt` the -i means case insensitive
-

## Linux key commands

- Create a file an edit in GNU `nano file.txt`
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


## Sudo

What is sudo? Super User Do
Run a command but elevated level of permissions
We have a 'Sudoer file' that list permissions

## Permissions

`drwxr-xr-x`
d= directory
r = read
w = write
x = execute
first `r-x` is group priveledges
second `r-x` is user priveledges

## Bash Coding

FOR LOOP: 'for > do > done' `for veg in carrot pee potato     <br/> do eacho $veg      <br/> done`

## Linux Tools

use `apt` to install

1. `cupp` cupp
2. `sshpass`

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

### Sharing files

- Create a shared file
- Go to Oracle settings bar click device
- Add to machine folder a new one directed to the shring file.
- Click atio mount and make perminent

### Kali Linux

Default user login is { name: 'kali', pass: 'kali' }

1. Create new Oracle VM.
2. Select set up Advanced.
3. Name them, set type and version. D64
4. Set the file you downloaded as the image.
5. Set how much resources to let it use. 2 cores and memory.
6. This should now be connected and you can click start in the VM box.
7. Now you should see a install menu.
8. Set auto capture true
9. Select graphical install
10. Set languages and user - leave domain blank
11. 'Use guided entire disk'
12. 'All files in one partition'
13. 'Vbox harddisk'
14. Confirm changes. Now it will install the operating system.
15. Next you will go to Software selection.
16. Take the default values from the first menu
17. Select yes
18. Select the drive
19. Continue - Should take you to login screen.
20. Update linux `sudo apt update`

Usefull features

- Install python `sudo apt install tilix`
- Multi Terminal `sudo apt install tilix`
- Server `sudo apt install apache2`

### Tools

- Low orbit ion canon
- Burb Suite


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

## Important Websites

1.
