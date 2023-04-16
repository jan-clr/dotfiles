#!/bin/bash

sudo apt update
sudo apt upgrade

let version=$(dkms status | rg 'evdi/([\d\.]+),' -or '$1')

sudo dksm remove -m evdi -v $version --all

mkdir tmp_evdi_install
cd tmp_evdi_install

git clone git@github.com:DisplayLink/evdi.git
cd evdi
make

sudo mkdir /usr/src/evdi-$version/
sudo cp ./* /usr/src/evdi-$version/

sudo dkms add -m evdi -v $version
sudo dkms build -m evdi -v $version
sudo dkms install -m evdi -v $version