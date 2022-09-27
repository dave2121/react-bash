#!/bin/bash
sudo apt update
cd ~
curl -sL https://deb.nodesource.com/setup_16.x -o /tmp/nodesource_setup.sh
sudo bash /tmp/nodesource_setup.sh
sudo apt install nodejs
npx create-react-app digital-ocean-app <<-EOF
yes
EOF
cd digital-ocean-app
npm start