#!/bin/bash

# Set specific Git settings for container
if [[ $(git config --worktree --get commit.gpgsign) == true ]]; then
   git config --worktree commit.gpgsign false
else
   echo "Git config is not using gpgsign, proceeding..."
fi
