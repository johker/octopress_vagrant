VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	config.vm.box = "octopress" 

  	config.vm.box_url = "https://github.com/kraksoft/vagrant-box-ubuntu/releases/download/14.04/ubuntu-14.04-amd64.box"

  	config.vm.network :private_network, ip: "192.168.34.10"
  	
  	# Rake preview port
  	# config.vm.network "forwarded_port", guest: 4000, host: 4040
  
	config.vm.provider "virtualbox" do |v|
	    v.memory = 2048
	end
  
  	# Install octopress
	config.vm.provision :shell, :path => "scripts/octopress.sh"
  
  	# Sync posts folder
  	# Uncomment after git repository has been cloned
  	config.vm.synced_folder "posts/", "/opt/octopress/source/_posts/"
  
  
end
