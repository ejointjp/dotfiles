#!/bin/sh

# シンボリックリンクの作成
DOT_FILES=".duti .gitconfig .zshrc .zprofile .hyper.js .hammerspoon Brewfile"
for file in $DOT_FILES
do
    ln -sf `pwd`/$file ~
done