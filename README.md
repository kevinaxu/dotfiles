Dotfiles
========

This repo contains my custom dotfiles. The included setup script will back up
all existing dotfiles into a '~/.dotfile-old/' directory if there are any that 
conflict with symlinks to be created. It then creates symlinks to the dotfiles 
in the new folder '~/dotfiles/' in the home directory. 

Usage
-----

You may have to first change permission of symlinker.sh before installing. 

'''bash
git clone git://github.com/kevinaxu/dotfiles ~/dotfiles
cd ~/dotfiles
./symlinker.sh 
'''
