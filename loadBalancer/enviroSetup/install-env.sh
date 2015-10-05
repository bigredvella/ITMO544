#!/bin/bash

sudo apt-get install -y apache2
sudo apt-get install -y git
sudo apt-get update -y

git clone https://github.com/bigredvella/ITMO544/loadBalancer.git

mv ./bigredvella/ITMO544.git/loadBalancer/images /var/www/html/images
mv ./bigredvella/ITMO544.git/loadBalancer /var/www/html

echo “This worked! Go you, you coding rockstar!” > /tmp/hello.txt
