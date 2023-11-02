# Networking Starter

## Windows Commands

- Create file `touch file.js`
- Write to file `echo var tom = 10 > file.js`
- Read file `cat file.js`
- Encode file `shred file.js` prevent being seen in text by cat
- Edit file `nano file.js` and to save press `ctrl + x + y + Enter`
- Copy file `cp file.js ./location/file.js`
- Move file `mv file.js ./location/file.js`
- Remove/delete file `rm file.js`
- Remove/delete directory `rmdir directory/` `-r` for recursive
- Get info on command `man` + a command i.e `man cat`
- Get data from the internet using url `wget http://`
- Get and save `curl http://localhost: > file.txt`
- Find files `find / -name "*Search term*"` the slash is where to search meaning everywhere
- Get ip address `ifconfig`
- Find command root location `which cat`
- Check IP `ping 8.8.8.8`

## Notes

- DHCP server - this hands out IP addresses across all network devices. Its how machines can talk.

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



### Tools

- Low orbit ion canon
- 