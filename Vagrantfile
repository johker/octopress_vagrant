VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  	config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-12042-x64-vbox4210.box"

  	config.vm.network :private_network, ip: "192.168.34.10"
  
	config.vm.provider "virtualbox" do |v|
	    v.memory = 2048
	end
  
  	# Install octopress
	config.vm.provision :shell, :path => "scripts/octopress.sh"
  
  	# Sync posts folder
  	config.vm.synced_folder "posts/", "/opt/octopress/source/_posts/"
  
  
end
