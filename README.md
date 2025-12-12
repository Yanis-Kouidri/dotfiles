# dotfiles
All my dot files like `.bash_custom` `.vimrc`

## Bash

```bash
    cd ~ && git clone git@github.com:Yanis-Kouidri/dotfiles.git
```

or

```bash
    cd ~ && git clone https://github.com/Yanis-Kouidri/dotfiles.git
```

then

```bash
    echo '[ -f ~/dotfiles/.bash_custom ] && source ~/dotfiles/.bash_custom' >> ~/.bashrc
```

```bash
    cd ~ && ln -s dotfiles/.bash_aliases ~/.bash_aliases
```

```bash
    source .bashrc
```

## Vim

```bash
cd ~ && ln -s dotfiles/.vimrc ~/.vimrc
```

## Git

```bash
cd ~ && ln -s dotfiles/.gitconfig ~/.gitconfig
```
