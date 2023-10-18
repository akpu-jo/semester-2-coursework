# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  
  config.vm.box = "bento/ubuntu-22.04"
  config.vm.hostname = "jxakpu"

  config.vm.network "forwarded_port", guest: 80, host: 8080


  config.vm.network "private_network", ip: "192.168.33.10"


  config.vm.synced_folder ".", "/var/www"


 
  
  
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
  
    # Customize the amount of memory on the VM:
    vb.memory = "1024"
  end

  config.vm.provision "shell", path: "provision.sh", privileged: false
end