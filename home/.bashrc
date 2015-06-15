# phpbrew
source ~/.phpbrew/bashrc

# homebrew
alias cask="brew cask "

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
alias safari='open -a safari' # ターミナルからSafariを開く
alias console='open -a console' # ターミナルからコンソールを開く
alias chrome='open -a Google\ Chrome' #ターミナルからChromeを開く
alias tree='open -g -a SourceTree'
alias write='open -a Write'
alias sys='open -a "system preferences"'
alias pocket='safari http://getpocket.com'

# Directories & Files
alias htdocs='open ~/Dropbox/Sites/htdocs'
alias bashrc='open ~/Dropbox/backup/terminal/.bashrc'
alias bashprofile='open ~/Dropbox/backup/terminal/.bash_profile'
alias touchtxt='touch test.txt; cot test.txt'
alias touchhtml='touch index.html; atom index.html'
alias dropbox='cd ~/Dropbox'

alias wordpress='curl -O  http://ja.wordpress.org/latest-ja.tar.gz; tar -zxvf latest-ja.tar.gz; rm latest-ja.tar.gz'

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

# MAMP
#alias mysql='/Applications/MAMP/Library/bin/mysql -u root -p'
#alias php5.3='/Applications/MAMP/bin/php5.3/bin/php'

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

# for svn
alias st='svn st'
alias stu='svn st -u'
alias sd='svn di'
alias sdi='svn di'
alias sad='svn add'
alias sup='svn up'
alias sci='svn ci'
alias scim='svn ci -m'

# for git
alias gst='git status'
alias gitcom='git commit -m'
alias gdi='git diff'
alias gdc='git diff --cached'
alias gad='git add'
alias gitlog='git log --oneline'
