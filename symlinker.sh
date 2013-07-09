#	Script that creates symlinks from home directory to any 
#	dotfiles in ~/dotfiles

dir = ~/dotfiles
olddir = ~/dotfiles_old
files= "bashrc vimrc zshrc"

# Create backup folder for old dotfiles in home directory
echo -n "Creating $olddir for backup of existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to dotfile directory
echo -n "Chaning to $dir directory ..."
cd $dir
echo "done"

# Move any existing dotfiles in homedir to dotfiles_old directory
# Create symlinks from homedir to any files in ~/dotfiles in $files
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$file ~/dotfiles_old/
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.file
done

# Test to see if zsh is installed. If it is: 
function install_zsh {
if [ -f /bin/zsh -o -f /usr/bin/zsh ]; then

	# It is installed
	echo "Zsh is installed."
else 

	# It isn't
	echo "Zsh is not installed"
fi
}
