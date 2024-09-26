#!/bin/bash
# Script to install necessary dependencies

# Update the package list
sudo apt update

# Install Nginx web server (example)
sudo apt install -y nginx

# Install Node.js and npm (if required)
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs

# Check if the Nginx service is active
sudo systemctl enable nginx
sudo systemctl start nginx

echo "Dependencies installed."

