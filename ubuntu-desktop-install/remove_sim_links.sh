#!/bin/bash

read -p "Are you sure to delete all already configure dotfiles ? (y/N) " -n 1 -r
echo    
if ! [[ $REPLY =~ ^[Yy]$ ]]
then
    echo Canceled
    exit 1
fi

if [ -f ~/.bash_aliases ]; then
    rm ~/.bash_aliases
fi

if  [ -f ~/.vimrc ]; then
    rm ~/.vimrc
fi

if  [ -f ~/.gitconfig ]; then
    rm ~/.gitconfig
fi

if  [ -f ~/config.ghostty ]; then
    rm ~/config.ghostty
fi

if  [ -f ~/.config/Code/User/settings.json ]; then
    rm ~/.config/Code/User/settings.json
fi

if  [ -f ~/.config/Code/User/snippets/markdown.json ]; then
    rm ~/.config/Code/User/snippets/markdown.json
fi

echo Dotfiles delete, you can now run './create_sim_links.sh'