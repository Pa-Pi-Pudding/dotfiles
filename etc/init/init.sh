#!/bin/sh

case ${OSTYPE} in
    darwin*)
    sudo /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    sudo brew install zsh
    sudo brew install zplugA
    sudo git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    sudo ~/.bash_it/install.sh
        ;;
    linux-gnu*)
    sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade && sudo apt-get -y autoremove && sudo apt-get -y autoclean
    sudo apt install vim
    sudo apt install aptitude
    sudo aptitude install vim-gnome
    sudo spt install zsh
    sudo apt install curl
    sudo curl -sL --proto-redir -all,https https://zplug.sh/installer | zsh
    sudo git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    sudo ~/.bash_it/install.sh
    sudo  source ~/.bashrc
    ;;
esac
sudo git clone https://github.com/yyuu/pyenv.git ~/.pyenv
sudo git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
sudo git clone https://github.com/powerline/fonts.git --depth=1
sudo pip3 install flake8
cd fonts
sudo ./install.sh
cd ..
sudo rm -rf fonts
