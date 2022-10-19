#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo systemctl start nginx
sudo systemctl enable nginx
nohup npm start --prefix /home/vagrant/app/app/app
