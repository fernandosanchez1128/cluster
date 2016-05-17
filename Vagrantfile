Vagrant.configure("2") do |config|
	config.vm.define :test01 do |node|
		node.vm.box = "base"
		node.vm.network :private_network, ip: "10.10.10.3", netmask: "255.255.255.0"
		node.vm.provider :virtualbox do |vb|
			vb.customize ["modifyvm", :id, "--memory", 512, "--cpus", 1, "--name", "ansible"]
		end
		node.vm.provision "shell", path: "balanceador/script_balanceador.sh"
	end
	config.vm.define :test02 do |node|
		node.vm.box = "base"
		node.vm.network :private_network, ip: "10.10.10.4", netmask: "255.255.255.0"
		node.vm.provision "shell", path: "script.sh"
	end
	config.vm.define :test03 do |node|
		node.vm.box = "base"
		node.vm.network :private_network, ip: "10.10.10.5", netmask: "255.255.255.0"
		node.vm.provision "shell", path: "script.sh"
	end
end
