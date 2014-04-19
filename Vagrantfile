# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  	config.vm.box = "centos-6.4-x86_64"
  
  	config.vm.box_url = "file://C:/repo/github/octopress_vagrant/ubuntu-server-12042-x64-vbox4210.box"

  	config.vm.hostname = "vagrantcentos64.example.com"
  	config.vm.network :private_network, ip: "192.168.34.10"
  
	config.vm.provider "virtualbox" do |v|
	    v.memory = 2048
	end
  
  	# Install octopress
	config.vm.provision :shell, :path => "scripts/octopress.sh"
  
  
end
