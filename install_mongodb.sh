#!/bin/bash
#add key and mongo repo
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'
#refresh apt
sudo apt update
#install package
sudo apt install -y mongodb-org
#start mongo and add it to autostart
sudo systemctl start mongod
sudo systemctl enable mongod
