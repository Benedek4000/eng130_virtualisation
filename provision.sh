#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

sudo systemctl start nginx
sudo systemctl enable nginx

sudo rm /etc/nginx/sites-available/default
sudo cp app/default /etc/nginx/sites-available/default
