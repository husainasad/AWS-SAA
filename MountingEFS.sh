#!/bin/bash
# Mount EFS (Linux 2 version)

# Install EFS mount helper
sudo yum install -y amazon-efs-utils

#  Create new directory 'efs'
sudo mkdir /efs

#edit security group as type:NFS, source: sg for EFS

# Mount file system using EFS mount helper (this method is without encryption)
sudo mount -t efs 'file system ID':/ /efs

# To verify
cd /efs
sudo su
echo "hello" > hello.txt
cat hello.txt
# use command 'ls' and/or 'cat hello.txt' on different instance, if the file is available, mount is successful