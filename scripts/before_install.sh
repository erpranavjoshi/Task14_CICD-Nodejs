#!/bin/bash

apt-get -y update
apt-get -y install nginx

#download node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node

#create our working directory if it doesnt exist
DIR="/home/ubuntu/app"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi
