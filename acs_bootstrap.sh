#/bin/bash

#Author: Satya Kaki
# Date: 10 Mar 2018

## once the acs box is up, login with vagrant acs and run acs_bootstrap.sh script to
## update apt and install ansible on acs

# upadate the repository and install ansible on the controller node
echo "updating repo and installing ansible control server"

sudo apt-get update -y
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update -y
sudo apt-get install ansible -y


# configure hosts file for our internal network defined by Vagrantfile

sudo mv /etc/hosts /tmp/hosts_$NEWDATE && sudo touch /etc/hosts && sudo cat >> /etc/hosts << EOL
# vagrant environment nodes
127.0.0.1       localhost
192.168.33.30   acs
192.168.33.31   ubu
192.168.33.32   cent
EOL





clear
echo ***********************************************************************
echo -e ' \t ' ' \t ' ' \t '          HAPPY AUTOMATION !!!
echo ***********************************************************************