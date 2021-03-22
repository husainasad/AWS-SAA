#!/bin/bash
# Mount EBS (Linux 2 version)
# See all attached drives
lsblk

# See special information
sudo file -s /dev/xvdb #If output is 'data', there is no file system on drive

# Create ext4 file system on drive
sudo mkfs -t ext4 /dev/xvdb

# Create a folder 'data'
sudo mkdir /data

# Mount the drive to /data
sudo mount /dev/xvdb /data

# Check EBS volume status
lsblk

# Mount EBS volume on every system reboot
sudo cp /etc/fstab /etc/fstab.orig
sudo nano /etc/fstab # to go inside file to add information
/dev/xvdb /data ext4 defaults,nofail 0 2 # add this information inside fstab file

# [Now after reboot, the EBS volume will automatically mount]
# Check if information is saved
cat /etc/fstab
# Verify the file system has been formatted
sudo file -s /dev/xvdb

# Unmounting EBS volume

# Unmount /data file
sudo umount /data # use cd ../ to come out of /data file first

# Check EBS volume status
lsblk

# Unmount
sudo mount -a

# Check EBS volume status
lsblk