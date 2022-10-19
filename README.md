# Virtualisation

Virtualisation is creating a virtual version of a computer, 
so that everyone can work in the same environment.

![alt text](https://github.com/Benedek4000/eng130_virtualisation/blob/main/vagrant_diagram.png)

## Benefits

- everybody uses the same environment
- reduced costs
- faster deployment
- greater control

We should use the tools described below to 
enjoy these benefits throughout the DevOps lifecycle.

## Dev Env

Development Environment provides facilities and software 
to programmers for software development

## Vagrant

Vagrant is a software product to build and maintain virtual development environments.

## VirtualBox

VirtualBox is a hypervisor for virtualisation.

## Installation guide

### Ruby

- install latest Ruby

### Vagrant

- install latest Vagrant

### VirtualBox

- install VirtualBox 6.1

## Vagrant commands

- start vm: `vagrant up`
- reload vm: `vagrant reload`
- connect to running vm: `vagrant ssh`
- stop vm: `vagrant halt`

## Linux commands

- update / check connectivity: `sudo apt-get update`
- upgrade: `sudo apt-get upgrade -y`
- current folder: `pwd`
- who am i: `uname` or `uname -a`
- folders at current location: `ls` or hidden files `ls -a` or properties `ls -l`
- create file: `touch filename`
- create folder: `mkdir foldername`
- navigate to folder: `cd foldername`
- navigate out: `cd ..`
- navigate to home: `cd`
- remove file/folder: `rm -rf filename/foldername`
- copy file: `cp origin/filename target/filename`
- navigate between OS and VM: `exit`
- admin command: `sudo command`
- admin user: `sudo su`
- change permission: `chmod instructions filename`
	- i.e. `chmod 700 test.txt`
	- i.e `chmod +x test.txt` (make file executable)
	- google other permissions
- currently running process `top` or `ps aux` (task manager)
- exit process: Ctrl+c
- remove process: `kill processID`
- clear screen: `clear`
- view first x lines of file: `head -x filename`
- view last x lines of file: `tail -x filename`
- pass output to command: pipe ` command with output | command`
- search for lines with character pattern in a file: `grep -options pattern filename`
- sort lines in file: `sort filename`
- create process in background/foreground
	- view background processes: `jobs`
	- if process already started, `bg` to background it
	- run process in background: `command &`
	- if process in background, `fg` to foreground it
- check tool/software status: `systemcrl status toolname`

## Create network between localhost and VM

- `sudo apt-get install nginx -y`
- `systemctl start/status nginx`

## Create synced folder between localhost and VM

- add to Vagrantfile: `config.vm.synced_folder "./host_folder", "target_folder"` 
- more info: [Vagrant Synced Folders Documentation](https://www.vagrantup.com/docs/synced-folders/basic_usage)

## Bash Scripting

- create bash.sh
- make it executable: `sudo chmod +x filename`

## Testing environment and running app

On host:
- instal bundler: `gem install bundler`
- install required dependencies for testing: `bundle`
- test env using: `rake spec` at folder /environment/spec_tests

On VM:
- start nginx: `sudo systemctl start nginx`
- enable nginx: `sudo systemctl enable nginx`
- install nodejs 6.x 1/2: `sudo curl -sL https://deb.nodesource.com=setup_6.x | bash -E bash -`
- install nodejs 6.x 2/2: `sudo apt-get install -y nodejs`
- test nodejs version: `nodejs --version`
- install pm2: `sudo npm install pm2 -g`
- go inside app folder, where app.js is located
- run `npm install`
- run app: `npm start`

