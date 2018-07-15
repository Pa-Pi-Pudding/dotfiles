# virtualwrapper の読み込み
#source /usr/local/bin/virtualenvwrapper.sh

# virtualenv のルートディレクトリにする場所
# ここに pip でインストールしたパッケージが保存されます。
#WORKON_HOME=$HOME/.virtualenvs

# pip にパッケージを virtualenv 環境下にインストール
# する設定
#export PIP_RESPECT_VIRTUALENV=true

case ${OSTYPE} in
    darwin*)
        #Mac用の設定
        export CLICOLOR=1
        alias ls='ls -G -F'
        alias ctags="`brew --prefix`/bin/ctags"
        ;;
    linux*)
        #Linux用の設定
        alias ls='ls -F --color=auto'
        ;;
esac

