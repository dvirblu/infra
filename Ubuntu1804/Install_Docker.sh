#!/bin/bash
# Created by Dvir Blumshtain
#install Docker
sudo apt-get update
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

# Add vagrant user to the docker group
sudo usermod -a -G docker vagrant
sudo usermod -a -G docker dvir
