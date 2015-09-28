#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git

git clone https://github.com/bigredvella/ITMO544.git

mv ./bigredvella/ITMO544.git/images /var/www/html/images
mv ./bigredvella/ITMO544.git/code /var/www/html



echo “This worked! Go you, you coding rockstar!” > /tmp/Confirmation.txt
