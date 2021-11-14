#!/bin/bash


#open ssh
sudo ufw allow OpenSSH

#enable ufw
sudo ufw enable

#update and install nginx
sudo apt update
sudo apt install nginx


#nginx enable on ufw
sudo ufw allow 'Nginx HTTP'

#restart nginx
sudo systemctl restart nginx

#install node
cd ~
echo "Enter the Nodejs version series example :16  :" 
read version
curl -sL https://deb.nodesource.com/setup_$version.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install -y nodejs
node -v
npm -v
sudo apt install build-essential
