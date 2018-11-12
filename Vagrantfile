# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unlecent you know what
# you're doing.
##  vagrant file to install centos 6.8 box and update the packages via provision script..

## This is a Multimachine vagrant file...### 
## Author: Satya
## Purpose: Ansible Lab on vagrant boxes
## All the ansible commands will be executed on controller node named acs 


Vagrant.configure("2") do |config|
    config.vm.define "ubu" do |ubu|
    ubu.vm.box = "ubuntu/trusty64"
    ubu.vm.hostname = "ubu.example.com"
    ubu.vm.box_check_update = false
    ubu.vm.network "private_network", ip: "192.168.33.31"
    ubu.vm.synced_folder ".", "/vagrant_data"

  end

    config.vm.define "cent" do |cent|
    cent.vm.box = "bento/centos-7.4"
    cent.vm.hostname = "cent.example.com"
    cent.vm.box_check_update = false
    cent.vm.network "private_network", ip: "192.168.33.32"
    cent.vm.synced_folder ".", "/vagrant_data"

  end

    config.vm.define "acs" do |acs|
    acs.vm.box = "ubuntu/trusty64"
    acs.vm.hostname = "acs.example.com"
    acs.vm.box_check_update = false
    acs.vm.network "private_network", ip: "192.168.33.30"
    acs.vm.synced_folder ".", "/vagrant_data"

    config.vm.provision :shell, path: "acs_bootstrap.sh"
    end

end
 
