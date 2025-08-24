#!/bin/bash

# Install nginx
apt-get update -y
apt-get install -y nginx

# Create index.html with server details
echo "<h1> Server Details: </h1>
<p><strong> Hostname: </strong> $(hostname)</p>
<p><strong> IP Address: </strong> $(hostname -I | cut -d' ' -f1)</p>" | tee /var/www/html/index.html

# Restart nginx to apply changes
systemctl restart nginx

