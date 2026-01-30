#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y apache2
git clone https://github.com/crparaizo/crparaizo.github.io.git
cd crparaizo.github.io
sudo cp -r * /var/www/html/