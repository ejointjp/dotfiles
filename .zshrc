# For npm
alias npmupgrade='ncu -u && npm install && npm audit fix'
alias npmupdate='npmupgrade'

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

# Homebrew
export PATH="/usr/local/sbin:$PATH"

# MySQL
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"