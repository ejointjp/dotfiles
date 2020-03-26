# read bashrc
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

# Homebrewでインストールしたパッケージを優先的に使う
# export PATH="/opt/homebrew/bin:$PATH"
# export PATH="/opt/homebrew/sbin:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# Nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# Homebrewのシンボリックリンク保存先
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Homebrew Cask の保存先
# export HOMEBREW_CASK_OPTS="--caskroom=/opt/homebrew-cask/Caskroom"


# Brew-file
export HOMEBREW_BREWFILE=~/.brewfile/Brewfile

# Brew-wrap
if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi

# 自作Shell置き場
export PATH=$PATH:$HOME/Documents/bin

export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
