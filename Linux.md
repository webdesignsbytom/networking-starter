# Linux

Important information and features found in linux.

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
- `wget` download files - wget https://
- `pdfinfo` get pdf metadata
- `exiftool` photo data
- `Traceroute` like ping

## Linux key commands

- Create a file an edit in GNU `nano file.txt`
- `ls` Read file
  - `ls -a` hidden files `ls -al` hidden files in a table `ls- ah` human readable table
  - `ls -lR Desktop` search for all files and sub directories in a location i.e Desktop.
- File read `impacket-secretdump -sam sam.save -system system.save LOCAL`
- `find` Find has many options `find -size 1024c`
  - `find -name *.txt` find any txt files
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
- `nmap`
  - `nmap <IP> -oN <FILE_NAME>` save result for file
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
- `&` add to end of command to run in background
- `-h` human readable

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

## Words

SCP = secure copy

### Cron

Here's a breakdown of the cron options:

crontabgenerator

MIN - Minute (0 - 59)
HOUR - Hour (0 - 23)
DOM - Day of the month (1 - 31)
MON - Month (1 - 12 or names like Jan, Feb, Mar, etc.)
DOW - Day of the week (0 - 6 or names like Sun, Mon, Tue, etc., where both 0 and 7 represent Sunday)
CMD - command to be executed

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
- NFS server `sudo apt install nfs-kernel-server`
  - test `systemctl status nfs-kernel-server` shows shared directory
  - config
