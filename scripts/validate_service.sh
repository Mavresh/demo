#!/bin/bash
# Script to validate if the service is running

# Check if Nginx is running
if systemctl is-active --quiet nginx; then
  echo "Nginx is running."
else
  echo "Nginx is NOT running. Attempting to restart..."
  sudo systemctl restart nginx
fi

# Validate that the application is running by sending an HTTP request
# Replace with the actual URL or IP and port of your application
APP_URL="http://localhost"

# Send a request to the application
HTTP_RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" $APP_URL)

# Check if the response code is 200 (OK)
if [ "$HTTP_RESPONSE" -eq 200 ]; then
  echo "Application is running successfully."
  exit 0
else
  echo "Application failed to start."
  exit 1
fi

