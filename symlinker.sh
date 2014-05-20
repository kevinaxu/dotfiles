#!/bin/bash
# Script that creates symlinks from home directory to any 
# dotfiles in ~/dotfiles
#
# Edit history: 
# 
# 5/20 - Deleted bashrc from [files]. 
# 

dir=~/dotfiles
olddir=~/dotfiles_old 
files="vimrc zshrc"

# Create dotfiles_old in home directory
echo "Creating $olddir for backup of existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to dotfile directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# Move any existing dotfiles in homedir to dotfiles_old directory
# Create symlinks from homedir to any files in ~/dotfiles in $files
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$file ~/dotfiles_old/
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done
