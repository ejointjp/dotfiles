#!/bin/bash
# 参考 https://tech.smartcamp.co.jp/entry/setup-by-dotfiles

echo "Xcodeをインストールします..."
xcode-select --install

# rosettaのインストール。不要であれば下記1行削除してください
sudo softwareupdate --install-rosetta --agree-to-licensesudo softwareupdate --install-rosetta --agree-to-license

### シンボリックリンクの作成
echo "シンボリックリンクを作成します..."
chmod 775 ~/dotfiles/_link.sh
~/dotfiles/_link.sh

#------------------------------------------
# homebrew(arm64)
#------------------------------------------
echo "homebrewをインストールします..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/wataree/.zprofile
# echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/wataree/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "brew doctorを実行します..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew doctor

echo "brew updateを実行します..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew update --verbose

echo "brew upgradeを実行します..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew upgrade --verbose

echo "Brewfileで管理しているアプリケーションをインストールします..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew bundle --file ./Brewfile --verbose

echo "brew cleanupを実行します..."
which brew >/dev/null 2>&1 && brew cleanup --verbose

### プログラミング言語のインストール
# echo "プログラミング言語をインストールします..."
# ./_asdf.sh



exec $SHELL -l