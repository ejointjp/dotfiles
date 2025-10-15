#!/bin/sh

# シンボリックリンクの作成
# .から始まるファイル・フォルダとBrewfileを対象とする
DOT_FILES=$(find . -maxdepth 1 \( -type f -o -type d \) \
  \( -name ".*" -o -name "Brewfile" \) \
  ! -name ".git" ! -name ".gitignore" ! -name ".gitconfig" ! -name ".DS_Store" \
  -exec basename {} \;)

for file in $DOT_FILES
do
    ln -sf `pwd`/$file ~
done