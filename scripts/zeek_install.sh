#!/bin/bash

workdir=$(pwd)
cores=$(nproc --all)

mkdir zeek
cd zeek
wget https://download.zeek.org/zeek-3.0.11.tar.gz
tar -xvf zeek-3.0.11.tar.gz
apt-get install -y cmake make gcc g++ flex bison libpcap-dev libssl-dev python-dev swig zlib1g-dev libmaxminddb-dev sendmail curl libjemalloc2

cd zeek-3.0.11

./configure
make -j $(($cores-1))
make install

