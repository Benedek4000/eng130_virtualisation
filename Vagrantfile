# create a vm using vagrant
# virtualbox
# vagrant
# ruby - dev-kit
# test installation
# vagrant
# ruby version

# provision script

$script = <<-'SCRIPT'
sudo apt-get update
sudo apt-get upgrade -y
sudo systemctl start nginx
sudo systemctl enable nginx
cd app/app/app
npm start &
cd
SCRIPT

# create vm with ubuntu 16.04

Vagrant.configure("2") do |config|

 config.vm.box = "ubuntu/xenial64"
 config.vm.network "private_network", ip: "192.168.10.100" 
 config.vm.synced_folder ".", "/home/vagrant/app"
 #config.vm.provision "shell", inline: $script, run: "always"
 config.vm.provision "shell", path: "provision.sh", run: "always"
 config.vm.boot_timeout = 600
 config.vm.provider :virtualbox do |vb|
  vb.customize ["modifyvm", :id, "--memory", "2048"]
  vb.customize ["modifyvm", :id, "--cpus", "2"]
  vb.customize ["modifyvm", :id, "--vram", "256"]   
 end

end
