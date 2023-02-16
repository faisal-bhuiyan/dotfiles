#!/bin/bash

# directory and filenames
dir=~/dev/dotfiles    # dotfiles directory
old_dir=~/dotfiles_old    # old dotfiles backup directory
files="bash_profile bashrc gitconfig"    # list of files/folders to symlink in homedir

# create dotfiles_old in homedir
echo -n "Creating $old_dir for backup of any existing dotfiles in ~ ..."
mkdir -p $old_dir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
# from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $old_dir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -sv $dir/.$file ~/.$file
done

