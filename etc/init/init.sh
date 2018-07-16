#!/bin/sh

case ${OSTYPE} in
    darwin*)
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install zsh
    brew install zplugA
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    ~/.bash_it/install.sh
    git clone https://github.com/powerline/fonts.git --depth=1


        ;;
    linux-gnu*)
    sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade && sudo apt-get -y autoremove && sudo apt-get -y autoclean
    apt-get install git
    spt-get install zsh
    apt-get install curl
    curl -sL --proto-redir -all,https https://zplug.sh/installer | zsh
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    ~/.bash_it/install.sh
    source ~/.bashrc
    ;;
esac'
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

