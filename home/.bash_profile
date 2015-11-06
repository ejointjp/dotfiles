# read bashrc
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

# Brew-file
export HOMEBREW_BREWFILE=~/Brewfile

if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi

# Homebrewでインストールしたパッケージを優先的に使う
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
# export PATH=/usr/local/bin:$PATH
# export PATH=/usr/local/sbin:$PATH

# PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:usr/sbin:/sbin
# export PATH


# Homebrewのシンボリックリンク保存先を設定する
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Nodebrew
#export PATH=$HOME/.nodebrew/current/bin:$PATH

# Homebrew php55
export PATH=$(brew --prefix php55)/bin:$PATH
