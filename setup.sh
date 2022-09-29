#!/bin/bash

OS_Package=yum
#Update Debian
sudo $OS_Package update
#Installing Node.js with Apt Using a NodeSource PPA
cd ~
curl -sL https://deb.nodesource.com/setup_16.x -o /tmp/nodesource_setup.sh
sudo bash /tmp/nodesource_setup.sh
sudo $OS_Package install nodejs
#Creating a React Project. Using EOF function to answer (Y) to -Ok to proceed? (y)-
npx create-react-app digital-ocean-app <<-EOF
yes
EOF
cd digital-ocean-app
#trigger the app to start
npm start
