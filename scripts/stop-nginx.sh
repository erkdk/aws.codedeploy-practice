#!/bin/bash

# Check if nginx is running
isExistApp=$(pgrep nginx)

if [[ -n $isExistApp ]]; then
    echo "Stopping nginx..."
    systemctl stop nginx
    echo "Nginx stopped."
else
    echo "Nginx is not running."
fi

