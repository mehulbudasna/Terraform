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
