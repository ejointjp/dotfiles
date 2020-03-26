#!/bin/bash
# 参考: https://qiita.com/b4b4r07/items/24872cdcbec964ce2178

DOTPATH=~/dotfiles

echo "start dotfiles setup ..."

for f in .??*
do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".DS_Store" ] && continue

    ln -snfv "$DOTPATH/$f" "$HOME"/"$f"

done

echo "dotfiles setup finished."
