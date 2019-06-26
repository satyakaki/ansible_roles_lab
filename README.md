## Ansible LAB

[![Build Status](https://travis-ci.org/satyakaki/ansible_roles_lab.svg?branch=master)](https://travis-ci.org/satyakaki/ansible_roles_lab)

pull the files and just do vagrant up to fire up  ansible control server (mgmt) and ansible clients (lb/web1/web2)

once boxes are up, login to mgmt box ( controller ), to run ansible commands

1. aunthenicate the servers 

        * ssh-keyscan  mgmt lb web1 web2>>~vagrant/.ssh/known_hosts

2. All the commands will be executed from /vagrant mount point in mgmt node 
   you may need to provide password for the firstime to setup ssh key and password less login

	* ansible-playbook playbooks/ssh-key-playbook.yml -k ( **** password of vagrant )

3. once ssh-key playbook runs succesfully, you may push configuration with passwordless

	* ansible all -m ping


