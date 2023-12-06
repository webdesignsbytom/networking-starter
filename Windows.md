# Windows

the system  environment variable for the Windows directory is `%windir%`.

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