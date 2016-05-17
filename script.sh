#!/bin/bash

#sources.list de la universidad
	sudo cp /vagrant/sources.list /etc/apt/sources.list


#aprovisionamiento de apache
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y apache2
sudo sh -c "echo \<h1\>Hostname: $1\($2\)\<\/h1\> >> /var/www/html/index.html"

#aprovisionamiento de ansible

#sudo DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common
#sudo apt-add-repository -y ppa:ansible/ansible
#sudo apt-get update
#sudo apt-get install -y ansible sshpass
	
#sudo apt-get install -	y ansible
