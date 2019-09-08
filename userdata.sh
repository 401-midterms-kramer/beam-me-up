#!/bin/bash
sudo apt install curl -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install curl -y
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt install nodejs -y
git clone https://github.com/401-midterms-kramer/beam-me-up_server
npm i pm2 -g
cd beam-me-up_server
npm install


