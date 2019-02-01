#!/bin/bash

cd /var/www/html
npm install
 
#GULP COMMANDS
gulp scss
gulp cpk-scss
gulp compile