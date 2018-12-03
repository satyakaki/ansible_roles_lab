#!/usr/bin/env bash

# install ansible (http://docs.ansible.com/intro_installation.html)
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible

# copy examples into /home/vagrant (from inside the mgmt node)
#cp -a /vagrant/examples/* /home/vagrant
chown -R vagrant:vagrant /home/vagrant

# configure hosts file for our internal network defined by Vagrantfile
cat >> /etc/hosts <<EOL

# vagrant environment nodes
192.168.33.150  mgmt
192.168.33.151  lb
192.168.33.21  web1
192.168.33.22  web2
#192.168.33.23  web3
#192.168.33.24  web4
#192.168.33.25  web5
#192.168.33.26  web6
#192.168.33.27  web7
#192.168.33.28  web8
#192.168.33.29  web9
EOL

# exporting the hosts for authentication from hosts ( ansible inventory ) file 
cd /home/vagrant
for i in `cat /vagrant/hosts  | head -5  | grep -v "\["`
do
	echo $i > /home/vagrant/hostfile 
	sleep 2
        ssh-keyscan $(cat /home/vagrant/hostfile) >>/home/vagrant/.ssh/known_hosts 
done
mv /home/vagrant/hostfile /tmp
echo "SSHKEYSCAN IS MADE FOR THE SERVERS TO HAVE PASSWORD LESS LOGIN !!!!"
