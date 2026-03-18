#!/bin/bash

BASH_CUSTOM_LINE='[ -f ~/dotfiles/.bash_custom ] && source ~/dotfiles/.bash_custom'
BASH_RC_FILE=~/.bashrc

if ! grep -Fxq "$BASH_CUSTOM_LINE" "$BASH_RC_FILE"; then
    echo "$BASH_CUSTOM_LINE" >> "$BASH_RC_FILE"
fi

if ! [ -f ~/.bash_aliases ]; then
    ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases
fi

if ! [ -f ~/.vimrc ]; then
    ln -s ~/dotfiles/.vimrc ~/.vimrc
fi

if ! [ -f ~/.gitconfig ]; then
    ln -s ~/dotfiles/.gitconfig ~/.gitconfig
fi

if ! [ -f ~/config.ghostty ]; then
    ln -s ~/dotfiles/config.ghostty ~/config.ghostty
fi

if ! [ -f ~/.config/Code/User/settings.json ]; then
    ln -s ~/dotfiles/vscode-config/settings.json ~/.config/Code/User/settings.json
fi

if ! [ -f ~/.config/Code/User/snippets/markdown.json ]; then
    ln -s ~/dotfiles/vscode-config/snippets/markdown.json ~/.config/Code/User/snippets/markdown.json
fi
