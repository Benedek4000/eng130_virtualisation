# create a vm using vagrant
# virtualbox
# vagrant
# ruby - dev-kit
# test installation
# vagrant
# ruby version

# create vm with ubuntu 16.04

Vagrant.configure("2") do |config|

 config.vm.box = "ubuntu/xenial64"
 config.vm.network "private_network", ip: "192.168.10.100" 
 config.vm.synced_folder ".", "/home/vagrant/app"
 config.vm.provision "shell", inline: "/bin/sh /home/vagrant/provision.sh"

end
