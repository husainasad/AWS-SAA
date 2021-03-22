#!/bin/bash
# install httpd (Linux 2 version)
sudo su # Become super user
yum update -y # Update instance
yum install -y httpd.x86_64 # Install httpd
systemctl start httpd.service # Start service
systemctl enable httpd.service # Service remains enabled across reboot
# Add HTTP Type in inbound rules before opening URL
echo "Hello World from $(hostname -f)" > /var/www/html/index.html