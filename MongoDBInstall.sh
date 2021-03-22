#!/bin/bash
# install mongodb (Linux 2 version)
sudo yum update
sudo vi /etc/yum.repos.d/mongodb-org-4.4.repo

# copy the following into the file. Press i to insert the text
[mongodb-org-4.4]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/amazon/2/mongodb-org/4.4/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.4.asc

# press escape to come out of editor mode and save the file using :wq!

sudo yum install -y mongodb-org

# start the service to verify the installation
sudo service mongod start
mongo
quit()

# to open mongodb for all ips
sudo vi /etc/mongod.conf
# change bindIp to 0.0.0.0 and save file

sudo service mongod restart
sudo service mongod stop