#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo systemctl start nginx
sudo systemctl enable nginx
nohup node /home/vagrant/sync/app/app/app.js > /dev/null 2>&1 &
