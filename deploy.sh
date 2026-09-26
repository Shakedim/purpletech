#!/bin/bash

echo "Starting deployment..."

git pull

sudo cp index.html /var/www/html/index.html

echo "Deployment completed!"
