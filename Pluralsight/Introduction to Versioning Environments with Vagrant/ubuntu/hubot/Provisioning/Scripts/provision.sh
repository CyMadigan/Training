#!/bin/bash
cp /vagrant/Provisioning/Scripts/.bashrc .bashrc

apt-get -y update

# check if npm package already installed; if not then we install nodejs and npm
#   sets the symbolic link
dpkg -s npm &>/dev/null || {
  apt-get -y install nodejs npm
  ln -s /usr/bin/nodejs /usr/bin/node
}

# check if hubot package already installed; if not then we install hubot and cofeescript
#   sets the symbolic link
command -v hubot &>/dev/null || {
  npm install -g hubot coffee-script yo generator-hubot
}
