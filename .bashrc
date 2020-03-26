# Web
alias apachestart='sudo apachectl start'
alias apachestop='sudo apachectl stop'
alias apacherestart='sudo apachectl restart'
alias mysqlstart='mysql.server start'
alias mysqlstop='mysql.server stop'
alias webstart='apachestart; mysqlstart'
alias webstop='apachestop; mysqlstop'


# Directories & Files
alias sites='open ~/Sites'

alias bashrc='code ~/.bashrc'
alias bashprofile='code ~/.bash_profile'

alias phpini='open /usr/local/etc/php/7.2/php.ini'
alias hosts='sudo open /etc/hosts'
alias themes='open wp-content/themes/'

# For npm
alias npmupgrade='ncu -u && npm install && npm audit fix'
alias npmupdate='npmupgrade'

# For WP-CLI
alias wpinstall='wp core download --locale=ja'

# For shortcut
alias up='cd ..'
alias upp='cd ../..'
alias uppp='cd ../../..'
alias ls='ls -GwF'
alias la='ls -alh'
alias t='tar zxvf'
alias t-='tar xvf -'
alias b='bzip2 -dc'
alias dh='df -h'
alias vi='vim'
alias v='vim'
alias sr='screen -d -R'
alias grep='grep --exclude=*.svn*'
alias greprn='grep -rn --exclude=*.svn*'
alias bye='sudo shutdown -h now'
alias reload='source ~/.bashrc; source ~/.bash_profile'


# For git
alias gst='git status'
alias gdi='git diff'
alias gdc='git diff --cached'
alias gad='git add'
alias gitcom='git commit -m'
alias gitlog='git log --oneline'

#cd の後に ls
cdls ()
{
  \cd "$@" && ls
}
alias cd="cdls"
