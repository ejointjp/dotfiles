#!/bin/bash
# 参考 https://tech.smartcamp.co.jp/entry/setup-by-dotfiles

set -e

# パスワードを事前にキャッシュ
echo "管理者パスワードを入力してください"
sudo -v

# パスワードキャッシュを維持
while true; do
    sudo -n true
    sleep 60
done &

echo "スクリーンショットの設定をします..."
if [ -f ./_screenshot.sh ]; then
    chmod +x ./_screenshot.sh
    ./_screenshot.sh
else
    echo "Error: ./_screenshot.sh が見つかりません"
fi

if ! xcode-select -p &> /dev/null; then
    echo "Xcode Command Line Tools をインストールします"
    sudo xcode-select --install
else
    echo "Xcode Command Line Tools はすでにインストールされています"
fi

echo "シンボリックリンクを作成します"
if [ -f ./_link.sh ]; then
    chmod +x ./_link.sh
    ./_link.sh
else
    echo "Error: ./_link.sh が見つかりません"
fi

echo "Dockを設定します"
if [ -f ./_dock.sh ]; then
    chmod +x ./_dock.sh
    ./_dock.sh
else
    echo "Error: ./_dock.sh が見つかりません"
fi

if [ "$(uname -m)" = "arm64" ]; then
    echo "Rosetta を確認します"
    if ! /usr/bin/pgrep oahd &> /dev/null; then
        echo "Rosetta をインストールします"
        sudo softwareupdate --install-rosetta --agree-to-license
    else
        echo "Rosetta はすでにインストールされています"
    fi
fi

if [ ! -x /opt/homebrew/bin/brew ]; then
    echo "Homebrew をインストールします"
    sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew はすでにインストールされています"
fi

BREW_PATH=$(which brew)
if [ -x "$BREW_PATH" ]; then
    echo "brew doctorを実行します"
    brew doctor

    echo "brew updateを実行します"
    brew update --verbose

    echo "brew upgradeを実行します"
    brew upgrade --verbose

    if [ -f ./Brewfile ]; then
        echo "Brewfile で管理しているアプリケーションをインストールします..."
        brew bundle --file ./Brewfile --verbose
    else
        echo "Error: Brewfile が見つかりません"
    fi

    echo "brew cleanupを実行します..."
    brew cleanup --verbose
else
    echo "Error: Homebrew がインストールされていません"
fi