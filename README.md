## Ansible LAB

pull the files and just do vagrant up to fire up  ansible control server (mgmt) and ansible clients (lb/web1/web2)

once boxes are up, login to mgmt box ( controller ), to run ansible commands

1. for the first time, you need to provide the password to setup password less login

        * ssh-keyscan  mgmt lb web1 web2>>~vagrant/.ssh/known_hosts

2. All the commands will be executed from /vagrant mount point in mgmt node

	* ansible-playbook playbooks/ssh-key-playbook.yml -k ( **** password of vagrant )

3. once ssh-key playbook runs succesfully, you may push configuration with passwordless

	* ansible all -m ping


