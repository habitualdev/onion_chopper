#!/bin/bash
#Install Required packages
apt install -y ruby openjdk-11-jdk
gem install -y rake
gem install -y bundler
#Pull the latest source
mkdir logstash

git clone https://github.com/elastic/logstash
cd logstash

workdir=$(pwd)
export OSS=true
export LOGSTASH_SOURCE=1
export LOGSTASH_PATH=$workdir
rake bootstrap
rake plugin:install-default


