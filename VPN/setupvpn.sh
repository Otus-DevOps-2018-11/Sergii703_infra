#!/bin/bash
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse"$
apt/sources.list.d/mongodb-org-3.4.list
echo "wget https://github.com/pritunl/pritunl/releases/download/1.29.1923.80/pr$
pritunl.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv
0C49F3730359A14518585931BC711F9BA15703C6
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv
7568D9BB55FF9E5287D586017AE645C0CF8E292A
apt-get --assume-yes update
apt-get --assume-yes upgrade
apt-get --assume-yes install pritunl mongodb-org
systemctl start pritunl mongod
systemctl enable pritunl mongod
