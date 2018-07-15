#!/bin/sh


 git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
case ${OSTYPE} in
    darwin*)
        #Mac用の設定
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        brew install zsh
        chsh -s /bin/zsh
        brew install zplug
        brew install ctags
        ;;
    linux*)
        #Linux用の設定
        apt-get install git
        apt-get install zsh
        apt-get install curl
        curl -sL --proto-redir -all,https https://zplug.sh/installer | zsh
        ;;
esac
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

