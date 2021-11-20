#!/bin/bash

# Create mount volume for logs
  sudo su - root
  mkfs.ext4 /dev/sdf
  mount -t ext4 /dev/sdf /var/log

# Install & Start nginx server
  apt-get update
  apt-get -y install nginx

# make sure nginx is started
   service nginx start
  
# Print the hostname which includes instance details on nginx homepage  
#  sudo echo Hello from `hostname -f` > /usr/share/nginx/html/index.html

  

  