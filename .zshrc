# For Homebrew
alias brewfileupdate='rm -rf ~/Brewfile; brew bundle dump'
alias brewfilepush='gist -u 57d1e583c54ff1a9c62ae54a597fa3e4 Brewfile'
alias brewupgrade='brew upgrade && brew upgrade --cask && brew cleanup'
alias brewbackup='~/bin/brewbackup.sh'

## shフォルダにパスを通す
export PATH="/Users/fujisaki/Library/CloudStorage/Dropbox/sh:$PATH"

# For WP-CLI
alias wpinstall="wp core download --locale=ja"

# For shortcut
alias up="cd .."

# # cd の後に ls
# cdls ()
# {
#   \cd "$@" && ls
# }
# alias cd="cdls"

# 配下の.DS_Storeと._xxx を削除
function removegomi() {
  find . \( -name '.DS_Store' -or -name '._*' \) -delete -print
}
alias rmgomi=removegomi

# すべての子階層でyarn buildする
function build_all() {
  find . -maxdepth 2 -type d -exec sh -c '(cd {} && [ -f package.json ] && yarn build)' \;
}

# 配下ののnode_modulesをすべて削除
function remove_all_node_modules {
  find . -name "node_modules" -type d -prune -exec rm -rf '{}' +
}

# For homebrew
export PATH=$PATH:/opt/homebrew/bin/
# For nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# For MySQL
export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/mysql@8.0/lib"
export CPPFLAGS="-I/opt/homebrew/opt/mysql@8.0/include"

# For PHP
export PATH="/opt/homebrew/opt/php@8.2/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.2/sbin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/php@8.2/lib"
export CPPFLAGS="-I/opt/homebrew/opt/php@8.2/include"



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
