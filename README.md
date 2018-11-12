# Ansible LAB project 

- Install Vagrant on your Linux / Windows base system
- Install Oracle Virtual box on your Linux / Windows base system
- Install git based on your base system

Once above pieces of software are installed 

- clone the repository to install 3 vms ( one acts as ansible controller / two boxes are clients )
  - # vagrant up 
  - # vagrant ssh acs ( ansible controller node ) 

 All the below commands will be executed in the vagrant vm named acs under /vagrant_data 
 cd to /vagrant_data - This is the working directory for ansible since it holds all ansible configurations 

  - first step to check if ansible is installed # ansible --version

You may have to do following two steps manually by adding public keys to known_hosts file 

  step 1:  under /vagrant_data # sh ssh_scan.sh
  step 2:  ansible all -m ping -i hosts -k ( prompts for password - provide vagrant password)

Done !!! - you may configure playbooks / roles and execute ansible-playbook commands without passwords

   







