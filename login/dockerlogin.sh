#!/bin/bash
REGISTRY_URL="https://index.docker.io/v1/"
USERNAME="username"
PASSWORD="password"
docker login $REGISTRY_URL -u $USERNAME -p $PASSWORD
