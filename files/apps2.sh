#!/bin/bash -e
echo "NGINX and PHP INSTALLED SUCCESSFULLY"
sudo service nginx restart
sudo service php7.0-fpm restart
sleep 10 
#Installing Composer
echo "INSTALLING composer"
sudo apt-get update -y
cd ~
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
sudo composer
echo "########### Composer Installed SUCCESSFULLY ###########"

# Installing Image Magick
echo "######## Installing IMAGE MAGICK #######"
sleep 10
sudo apt update -y
sudo apt-get install -y build-essential
sudo apt-get build-dep imagemagick -y
sudo apt-get install -y imagemagick libmagickcore-dev libmagickwand-dev libmagic-dev
sudo apt-get install -y imagemagick
sudo apt-get -y autoremove
sleep 10
echo "ImageMagic INSTALLED SUCCESSFULLY"
echo "PACKER BUILD SUCCEEDED"