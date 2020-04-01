# For npm
alias npmupgrade='ncu -u && npm install && npm audit fix'
alias npmupdate='npmupgrade'

# For Homebrew
alias brewfileupdate='rm -rf ~/Brewfile; brew bundle dump'
alias brewfilepush='gist -u 57d1e583c54ff1a9c62ae54a597fa3e4 Brewfile'

# For WP-CLI
alias wpinstall='wp core download --locale=ja'

# For shortcut
alias up='cd ..'

# cd の後に ls
cdls ()
{
  \cd "$@" && ls
}
alias cd="cdls"

#
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"