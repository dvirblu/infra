#!/bin/bash
# Created by Dvir Blumshtain
# Install docker in centos 7

echo "Docker installation begins"
# Remove any old versions
#sudo yum remove docker docker-common docker-selinux docker-engine

# Install required packages
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Configure docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker-ce
sudo yum install docker-ce -y

# Start Docker
sudo systemctl start docker
sudo systemctl enable docker

# Post Installation Steps
# Create Docker group
#sudo groupadd docker

# Add user to the docker group
sudo usermod -aG docker $USER

echo "Installation Complete -- Logout and Log back"