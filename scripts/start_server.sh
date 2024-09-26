#!/bin/bash
# Script to start the server or application

# Navigate to the application directory (example: /var/www/html)
cd /var/www/html

# Start the server if it's a Node.js app
# Replace with actual start command for your application
sudo npm install
sudo npm run build
sudo pm2 restart app

# Restart Nginx to load new configuration (if applicable)
sudo systemctl restart nginx

echo "Server started successfully."

