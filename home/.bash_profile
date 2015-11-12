# read bashrc
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

# Homebrewでインストールしたパッケージを優先的に使う
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
# export PATH=/usr/local/bin:$PATH
# export PATH=/usr/local/sbin:$PATH

# Homebrew php55
export PATH=$(brew --prefix php55)/bin:$PATH

# Homebrewのシンボリックリンク保存先
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Brew-file
export HOMEBREW_BREWFILE=~/Brewfile

# Brew-wrap
if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi
