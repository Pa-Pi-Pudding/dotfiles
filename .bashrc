# virtualwrapper の読み込み
source /usr/local/bin/virtualenvwrapper.sh

# virtualenv のルートディレクトリにする場所
# ここに pip でインストールしたパッケージが保存されます。
WORKON_HOME=$HOME/.virtualenvs

# pip にパッケージを virtualenv 環境下にインストール
# する設定
export PIP_RESPECT_VIRTUALENV=true
