#!/bin/bash

echo "Installing cargo-skyline."
cargo install cargo-skyline

echo "Updating skyline std."
cargo skyline update-std

echo "Updating skyline deps"
cargo skyline update

echo "Installing python3"
apt-get update && apt-get install -y python3

echo "Setup complete."