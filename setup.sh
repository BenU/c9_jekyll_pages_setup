#!/bin/bash

# Prompt for user input
read -p "Enter your name: " name
read -p "Enter your email: " email
read -p "Enter the repository name: " repo_name

# Create the repository directory within the environment directory and initialize Git
mkdir ~/environment/"$repo_name"
cd ~/environment/"$repo_name"
git init

# Create a .gitignore file in the repository directory
cat <<EOL > .gitignore
# add appropriate files here

EOL

# Set up Git
git config --global user.name "$name"
git config --global user.email "$email"

# Add useful Git aliases
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.last 'log -1 HEAD'
git config --global alias.unstage 'reset HEAD --'

# Add code for remote GitHub repository

# Add code to local ~/.bashrc file to:
# add some useful CLI aliases
# customize prompt, perhaps with directory and git branch.
# etc.


# Configure Vim
cat <<EOL > ~/.vimrc
set number
set tabstop=2
set shiftwidth=2
set expandtab
syntax on
set autoindent
set smartindent
set smartcase
set clipboard=unnamedplus
set ruler
set cursorline
set wildmenu
EOL

echo "Setup complete! Your Cloud9 environment is ready for GitHub Pages development."
