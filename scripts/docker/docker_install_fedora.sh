#!/bin/bash

# REMOVE OLD DOCKER INSTALLATIONS
sudo dnf remove docker \
    docker-client \
    docker-client-latest \
    docker-common \
    docker-latest \
    docker-latest-logrotate \
    docker-logrotate \
    docker-selinux \
    docker-engine-selinux \
    docker-engine

# SETUP AND INSTALLATION
sudo dnf -y install dnf-plugins-core

sudo dnf -y config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin

sudo systemctl start docker
sudo systemctl enable docker

sudo docker run hello-world

# ADD PRIVILEGES TO THE DOCKER INSTALLATION
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker 
docker run hello-world
