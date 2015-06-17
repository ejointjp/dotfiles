# homebrew
alias cask="brew cask"

# Web
alias apachestart='sudo apachectl start'
alias apachestop='sudo apachectl stop'
alias apacherestart='sudo apachectl restart'
alias mysqlstart='mysql.server start'
alias mysqlstop='mysql.server stop'
alias webstart='apachestart; mysqlstart'
alias webstop='apachestop; mysqlstop'

# npm
alias npmi='npm i -D'

# Application Shortcuts
alias cot='open -g -a CotEditor' # ターミナルからCotEditorを開く

# Directories & Files
alias sites='open ~/Sites'
alias dropbox='cd ~/Dropbox'

alias bashrc='atom ~/.bashrc'
alias bashprofile='atom ~/.bash_profile'
alias brewfile='atom ~/.bluefile'

alias cpscceleton='cp -r ~/Sites/htdocs/scceleton/dist scceleton'
alias gulppress='cp -r ~/Web/gulp/gulppress gulppress'
alias gulpapp='cp -r ~/Web/gulp/gulpapp gulpapp'
alias bourbonlink='ln -s ~/Libs/sass/bourbon'
alias neatlink='ln -s ~/Libs/sass/neat'
alias scceletonlink='ln -s ~/Libs/sass/scceleton;
ln -s ~/Libs/sass/libs;
ln -s ~/Libs/fonts;
cp -r ~/Libs/sass/my-theme my-theme.original;
cp ~/Libs/sass/style.scss style.scss.original'


alias sasslink='ln -s ~/Libs/sass/libs;
bourbonlink;
neatlink;
scceletonlink'

# for shortcut
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
alias source='source ~/.bashrc; source ~/.bash_profile'


# for git
alias gst='git status'
alias gdi='git diff'
alias gdc='git diff --cached'
alias gad='git add'
alias gitcom='git commit -m'
alias gitlog='git log --oneline'
