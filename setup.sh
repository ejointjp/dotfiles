#!/bin/bash
# 参考 https://tech.smartcamp.co.jp/entry/setup-by-dotfiles

set -e

# パスワードを事前にキャッシュ
echo "管理者パスワードを入力してください"
sudo -v

# パスワードキャッシュを維持
# スクリプト実行中のみ `sudo` のキャッシュを更新
while true; do
    sudo -n true
    sleep 600
done &  # バックグラウンドで実行
CACHE_PID=$!  # プロセスIDを記録

# スクリプト終了時にキャッシュ保持プロセスを停止
trap "kill $CACHE_PID" EXIT

# スクリーンショット設定
echo "スクリーンショットの設定をします..."
if [ -f ./_screenshot.sh ]; then
    chmod +x ./_screenshot.sh
    ./_screenshot.sh
else
    echo "Warning: ./_screenshot.sh が見つかりません。スキップします。"
fi

# 壁紙設定
echo "壁紙の設定をします..."
if [ -f ./_wallpaper.sh ]; then
    chmod +x ./_wallpaper.sh
    ./_wallpaper.sh
else
    echo "Warning: ./_wallpaper.sh が見つかりません。スキップします。"
fi

# Xcode Command Line Tools のインストール確認
if ! xcode-select -p &> /dev/null; then
    echo "Xcode Command Line Tools をインストールします..."
    xcode-select --install
else
    echo "Xcode Command Line Tools はすでにインストールされています。"
fi

# シンボリックリンク設定
echo "シンボリックリンクを作成します..."
if [ -f ./_link.sh ]; then
    chmod +x ./_link.sh
    ./_link.sh
else
    echo "Warning: ./_link.sh が見つかりません。スキップします。"
fi

# Dock の設定
echo "Dockを設定します..."
if [ -f ./_dock.sh ]; then
    chmod +x ./_dock.sh
    ./_dock.sh
else
    echo "Warning: ./_dock.sh が見つかりません。スキップします。"
fi

# Apple Silicon で Rosetta の確認
if [ "$(uname -m)" = "arm64" ]; then
    echo "Rosetta を確認します..."
    if ! /usr/bin/pgrep oahd &> /dev/null; then
        echo "Rosetta をインストールします..."
        softwareupdate --install-rosetta --agree-to-license
    else
        echo "Rosetta はすでにインストールされています。"
    fi
fi

# Homebrew のインストールと環境設定
if [ ! -x /opt/homebrew/bin/brew ]; then
    echo "Homebrew をインストールします..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    echo "Homebrew はすでにインストールされています。"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Homebrew 確認と設定
BREW_PATH=$(which brew)
if [ -x "$BREW_PATH" ]; then
    echo "brew doctor を実行します..."
    brew doctor

    echo "brew update を実行します..."
    brew update --verbose

    echo "brew upgrade を実行します..."
    brew upgrade --verbose

    # Brewfile の適用
    if [ -f ./Brewfile ]; then
        echo "Brewfile で管理しているアプリケーションをインストールします..."
        brew bundle --file ./Brewfile --verbose
    else
        echo "Warning: Brewfile が見つかりません。スキップします。"
    fi

    echo "brew cleanup を実行します..."
    brew cleanup --verbose
else
    echo "Error: Homebrew が正しくインストールされていません。手動で確認してください。"
fi