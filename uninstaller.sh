#!/usr/bin/bash

echo "### Cleaning your OS..."
echo
sleep 5;
# Clean and prepare the ENV
sudo apt-get remove docker-compose-plugin -y
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
rm -rf /var/lib/docker
rm -rf /etc/docker
