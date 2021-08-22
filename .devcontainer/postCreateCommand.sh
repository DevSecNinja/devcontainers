#!/bin/bash

# Set specific Git settings for container
if [[ $(git config --get commit.gpgsign) == true ]]; then
   git config --worktree commit.gpgsign false
else
   echo "Git config is not using gpgsign, proceeding..."
fi

# Run sample script
echo "Running sample script..."
gcc ./sample/hello-world.c -o ./sample/hello-world.out
./sample/hello-world.out
