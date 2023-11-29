# Virtual Box

## DHCP 

`cd /Program Files/Oracle/VirtualBox`
`vboxmanage dhcpserver add --network=hackRobots --server-ip=10.38.1.1 --lower-ip=10.38.1.110 --upper-ip=10.38.1.120 --netmask=255.255.255.0 --enable`