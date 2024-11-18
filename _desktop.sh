#!/bin/bash

# 壁紙のフルパス（スペースはエスケープ不要）
WALLPAPER_PATH="/Users/fujisaki/Library/Mobile Documents/com~apple~CloudDocs/Pictures/壁紙/wallpaper-yuiami-16-10.png"

# 壁紙ファイルの存在確認
if [ ! -f "$WALLPAPER_PATH" ]; then
    echo "エラー: 壁紙ファイルが見つかりません。パスを確認してください: $WALLPAPER_PATH"
    exit 1
fi

# AppleScriptで壁紙を設定
osascript -e "
tell application \"System Events\"
    tell current desktop
        set picture to \"$WALLPAPER_PATH\"
    end tell
end tell
"

# 結果を出力
if [ $? -eq 0 ]; then
    echo "壁紙を変更しました: $WALLPAPER_PATH"
else
    echo "エラー: 壁紙を変更できませんでした。"
fi