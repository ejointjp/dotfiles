# read bashrc
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

#Homebrewのシンボリックリンク保存先
export HOMEBREW_CASK_OPTS="--appdir=/Applications"


#Nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# export HOMEBREW_CACHE=~/Library/Caches/Homebrew
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# for Homebrew php55
# export PATH="$(brew --prefix homebrew/php/php55)/bin:$PATH"

#path
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

export HOMEBREW_BREWFILE=~/.brewfile
