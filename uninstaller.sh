#!/usr/bin/bash

echo "### Cleaning your OS..."
echo
sleep 5;
# Clean and prepare the ENV
docker stop $(docker ps -a -q) docker rm $(docker ps -a -q) docker rmi $(docker images -a -q)
systemctl stop docker.service
sudo apt-get remove docker-compose-plugin -y
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
systemctl stop docker.service
systemctl stop docker.socket
rm -rf /var/lib/docker/
rm -rf /etc/docker/
