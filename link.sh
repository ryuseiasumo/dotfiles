#!/bin/bash

DOT_DIRECTORY="$HOME/dotfiles"
# SPECIFY_FILES=(Brewfile)
BACKUP_DIRECTORY="$HOME/.backup/dotfiles"

cd `dirname $0`

mkdir -p $BACKUP_DIRECTORY

for f in .??*
do
    [[ $f = ".git" ]] && continue
    [[ $f = ".gitignore" ]] && continue
    [[ $f = ".DS_Store" ]] && continue
    if [ -e $HOME/$f ] && [ ! -L $HOME/$f ]; then
        mv $HOME/$f $BACKUP_DIRECTORY
    fi
    ln -snfv $DOT_DIRECTORY/$f $HOME/$f
done

rmdir -p $BACKUP_DIRECTORY 2>/dev/null

# starship config
mkdir -p $HOME/.config
ln -snfv $DOT_DIRECTORY/config/starship.toml $HOME/.config/starship.toml
