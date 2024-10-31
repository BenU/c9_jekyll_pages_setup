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

# consider adding code to customize the CLI prompt
# The Learn Enough Git Tutorial adds the following to include the git branch as well as brach tab completion

# curl -o ~/.git-prompt.sh -L https://cdn.learnenough.com/git-prompt.sh
# curl -o ~/.git-completion.bash -L https://cdn.learnenough.com/git-completion.bash
# # Make the downloaded scripts executable with the following commands:
# chmod +x ~/.git-prompt.sh
# chmod +x ~/.git-completion.bash

# # Next the ~/.bashrc file must be updated with links to the new scripts as well
# as appropriate PS1 code.
# echo "In the ~/.bashrc file delete the old PS1 lines and add the following: 
# ...
# # Git configuration
# # Branch name in prompt
# source ~/.git-prompt.sh
# PS1='[\W$(__git_ps1 " (%s)")]\$ '
# export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
# # Tab completion for branch names
# source ~/.git-completion.bash"

# # source to make the above changes active:
# source ~/.bashrc



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
