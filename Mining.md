# Mining

## Online servers

1. Google Cloud Platform
2. AWS
3. Linode


## Linux install

```bash
#!/bin/bash
sudo apt update -y
sudo apt upgrade -y

sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y

git clone https://github.com/xmrig/xmrig.git

cd xmrig/

mkdir build

cd build

cmake ..

make
```

Mine code

`./xmrig -o gulf.moneroocean.stream:10128 -u 49YzZ75Vq1Q5fYtPVn7uA8VMdN7aaByKfadPyfeBiJw5GHuD1vKkb2GjeeuApT2wu4AMpT4TBsfWuRsYEBDZNT9NVWCqwoz -p miner_name `

## Windows install
