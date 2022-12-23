#参考: https://do-zan.com/mac-dock-terminalcommand-settings/

# 画面上の位置
defaults write com.apple.dock orientation -string "right"

# Dockを自動的に表示
defaults write com.apple.dock autohide -bool true

# 最近使ったアプリケーションをDockに表示
defaults write com.apple.dock show-recents -bool false

# 起動中のアプリケーションをアニメーションで表示
defaults write com.apple.dock launchanim -bool true

# 起動中のアプリのみを表示
defaults write com.apple.dock static-only -boolean true

killall Dock