#!/bin/bash
#Update Debian
sudo apt update
#Installing Node.js with Apt Using a NodeSource PPA
cd ~
curl -sL https://deb.nodesource.com/setup_16.x -o /tmp/nodesource_setup.sh
sudo bash /tmp/nodesource_setup.sh
sudo apt install nodejs
#Creating a React Project. Using EOF function to answer (Y) to -Ok to proceed? (y)-
npx create-react-app digital-ocean-app <<-EOF
yes
EOF
cd digital-ocean-app
npm start
