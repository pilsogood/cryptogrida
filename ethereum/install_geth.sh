#! /bin/sh
sudo apt-get -y update && sudo apt-get -y upgrade
git clone https://github.com/ethereum/go-ethereum
sudo apt-get install -y build-essential golang
cd go-ethereum
make geth