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
mv /etc/hosts /home/vagrant/backup_hosts
cat > /etc/hosts <<EOL

# vagrant environment nodes

127.0.0.1 localhost

192.168.56.152  mgmt
192.168.56.151 lb
192.168.56.101  web1
192.168.56.102 web2

EOL



