#!/bin/bash

echo "0.1 Update your existing list of packages"
sudo apt update

echo "0.2 Install a few prerequisite packages which let apt use packages over HTTPS"
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

echo "0.3 Add the GPG key for the official Docker repository to your system"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "0.4 Add the Docker repository to APT sources"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

echo "0.5 Update the package database with the Docker packages from the newly added repo"
sudo apt update

echo "1.0 Install docker"
sudo apt install docker-ce -y

echo "1.1 Check that it’s running"
sudo systemctl status docker

echo "2.0 Executing the Docker Command Without Sudo"
sudo usermod -aG docker ${USER}
