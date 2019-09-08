#!/bin/bash
sudo apt install curl -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install curl -y
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt install nodejs -y
git clone https://github.com/401-midterms-kramer/beam-me-up_server
sudo npm i pm2 mongodb -g
sudo apt install mongodb-server-core
sudo systemctl start mongodb
echo "#Unit contains the dependencies to be satisfied before the service is started.
[Unit]
Description=MongoDB Database
After=network.target
Documentation=https://docs.mongodb.org/manual
# Service tells systemd, how the service should be started.
# Key `User` specifies that the server will run under the mongodb user and
# `ExecStart` defines the startup command for MongoDB server.
[Service]
User=mongodb
Group=mongodb
ExecStart=/usr/bin/mongod --quiet --config /etc/mongod.conf
# Install tells systemd when the service should be automatically started.
# `multi-user.target` means the server will be automatically started during boot.
[Install]
WantedBy=multi-user.target" > mongodb.service
sudo mv mongodb.server /etc/systemd/system/mongodb.service
systemctl daemon-reload
sudo systemctl start mongodb
sudo systemctl enable mongodb

cd beam-me-up_server
echo "MONGODB_URI=mongodb://localhost:27017/beam-me-up" > .env
sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u ubuntu --hp /home/ubuntu
npm install
pm2 start index.js --name beam-me-up_server