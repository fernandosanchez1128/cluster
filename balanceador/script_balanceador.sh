#!/bin/bash
sudo cp /vagrant/sources.list /etc/apt/sources.list
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y haproxy
sudo cp /vagrant/balanceador/haproxy  /etc/default/haproxy
sudo cp /vagrant/balanceador/haproxy.cfg  /etc/haproxy/haproxy.cfg
sudo cp /vagrant/sources.list /etc/apt/sources.list
sudo service haproxy start
