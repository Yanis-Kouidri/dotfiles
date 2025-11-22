# dotfiles
All my dot files like `.bash_custom` `.vimrc`

## Bash

    cd ~ && git clone git@github.com:Yanis-Kouidri/dotfiles.git

or

    cd ~ && git clone https://github.com/Yanis-Kouidri/dotfiles.git

    echo '[ -f ~/dotfiles/.bash_custom ] && source ~/dotfiles/.bash_custom' >> ~/.bashrc
    
    cd ~ && ln -s dotfiles/.bash_aliases ~/.bash_aliases

    source .bashrc



## Vim

```sh
cd ~ && ln -s dotfiles/.vimrc ~/.vimrc
```

## Git

```sh
cd ~ && ln -s dotfiles/.gitconfig ~/.gitconfig
```
