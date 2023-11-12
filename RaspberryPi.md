# Raspberry Pi

## Table of contents

- [Raspberry Pi](#raspberry-pi)
  - [Table of contents](#table-of-contents)
  - [Set up](#set-up)
  - [Connect Via SSH](#connect-via-ssh)
  - [Mining commands](#mining-commands)
  - [Mining xmrig](#mining-xmrig)

## Set up

How to set up a Pi 4 from scratch:
OS install software 'Raspberry Pi Imager' download.

Press `ctrl + shift + x` for headless install in Pi Imager

1. Format the SD Card
   1. Download Raspberry Pi Imager
   2. Choose device and os
   3. Select the correct storage device. It will erase everything else.
2. Plug SD Card into device.
3. Plug in cables and keyboard
4. Power up.

`sudo apt install rpi-imager` install command for linux

## Connect Via SSH

You may need to a file to the boot folder in the pi called `ssh`

`ssh tom_b@192.168.1....` then enter the password

## Mining commands 

sudo apt update

sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y

git clone https://github.com/xmrig/xmrig.git

cd xmrig/

mkdir build

cd build

cmake ..

make

`./xmrig -o gulf.moneroocean.stream:10128 -u 49YzZ75Vq1Q5fYtPVn7uA8VMdN7aaByKfadPyfeBiJw5GHuD1vKkb2GjeeuApT2wu4AMpT4TBsfWuRsYEBDZNT9NVWCqwoz -p pi4-4gb`


## Mining xmrig 

Commands

`h` show hash rate
`s` check results
`c` show connection data

