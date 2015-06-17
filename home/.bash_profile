# read bashrc
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

# Homebrewでインストールしたパッケージを優先的に使う
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# Homebrewのシンボリックリンク保存先を設定する
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# Homebrew php56
export PATH=$(brew --prefix php56)/bin:$PATH
