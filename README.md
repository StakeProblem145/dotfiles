# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git

```
sudo apt install git
```

### Stow

```
sudo apt install stow
```

### ZSH
https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH

```
sudo apt install zsh

# Ubuntu
chsh -s $(which zsh)

# Fedora
sudo chsh $USER 
```

### Antidote
https://antidote.sh/

```
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-$HOME}/.antidote
```

### Starship
https://starship.rs/
```
curl -sS https://starship.rs/install.sh | sh
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone 
$ cd .dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```