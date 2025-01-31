#!/bin/bash

printf "\n ====================== apt-get update ======================\n"
apt-get update
printf "\n ====================== apt-get install ======================\n"
apt-get install libgtk2.0-0 libgtk-3-0 libgbm-dev libnotify-dev libnss3 libxss1 libasound2 libxtst6 xauth xvfb -y
printf "\n ====================== cypress ci ======================\n"
npm ci
printf "\n ====================== cypress run ======================\n"
npm run cy:run