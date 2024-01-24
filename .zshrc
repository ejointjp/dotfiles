# For Homebrew
alias brewfileupdate='rm -rf ~/Brewfile; brew bundle dump'
alias brewfilepush='gist -u 57d1e583c54ff1a9c62ae54a597fa3e4 Brewfile'
# alias brewupgrade='brew upgrade && brew upgrade --cask --greedy && brew cleanup'
alias brewupgrade='brew upgrade && brew upgrade --cask && brew cleanup'

# For WP-CLI
alias wpinstall="wp core download --locale=ja"

# For Dropbox
# alias di='xattr -w com.dropbox.ignored 1 node_modules' # node_modulesを無視する
alias di="xattr -w 'com.apple.fileprovider.ignore#P' 1 node_modules" # node_modulesを無視する
alias di0="xattr -d 'com.apple.fileprovider.ignore#P' node_modules" # node_modulesの無視を解除する

# For Dropbox
alias di="mkdir node_modules; xattr -w 'com.apple.fileprovider.ignore#P' 1 node_modules" # node_modulesを無視する
alias di0="xattr -d 'com.apple.fileprovider.ignore#P' node_modules"                      # node_modulesの無視を解除する

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



#
# export PATH="$PATH:$HOME/Dropbox/bin"
# export PATH="$PATH:$HOME/Dropbox/bin:$PATH"

# export PATH="$PATH:/opt/homebrew/bin/"
# export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
# export PATH="/usr/local/opt/php@7.4/bin:$PATH"
# export PATH="/usr/local/opt/php@7.4/sbin:$PATH"
# export PATH="$PATH:$HOME/.composer/vendor/bin"
# export PATH="$HOME/.composer/vendor/bin:$PATH"
# export PATH="$PATH:$HOME/.composer/vendor/bin"
# export PATH="$HOME/.nodebrew/current/bin:$PATH"
# export PATH="/usr/local/bin/php-cs-fixer:$PATH"
# export PATH="/usr/local/sbin:$PATH"
# export PATH="$HOME/.pyenv/shims:$PATH"

# export PATH="/opt/homebrew/opt/node@16/bin:$PATH"
# export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
# export PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"

