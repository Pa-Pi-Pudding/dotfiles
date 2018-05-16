#pyenv profile
PYENV_ROOT=~/.pyenv
export PATH=$PATH:$PYENV_ROOT/bin
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

#rbenv profile
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

