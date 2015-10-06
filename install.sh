#!/bin/bash
DOTPATH=~/.dotfiles
GITHUB_URL=https://github.com/balmychan/dotfiles.git
git clone --recursive "$GITHUB_URL" "$DOTPATH"
cd ~/.dotfiles
if [ $? -ne 0 ]; then
    die "not found: $DOTPATH"
fi
for f in .??*
do
    [ "$f" = ".git" ] && continue

    ln -snfv "$DOTPATH/$f" "$HOME/$f"
done
