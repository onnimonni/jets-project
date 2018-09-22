#!/bin/bash
# This file is used to run local development environment with docker

# Install missing gems
echo "Ensuring all gems are installed..."
bundle check || bundle install --retry 5

echo "Ensuring all node packages are installed..."
yarn check || yarn install

echo "Starting the Jets server..."
jets server --host 0.0.0.0