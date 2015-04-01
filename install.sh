#!/bin/bash

DOTFILES=$(pwd)

pushd $HOME >/dev/null

mkdir -p .emacs.d
pushd .emacs.d >/dev/null
for f in $DOTFILES/.emacs.d/*; do
    rm -f $(basename $f)
    ln -s $f $(basename $f)
done
popd >/dev/null

mkdir -p bin
pushd bin >/dev/null
for f in $DOTFILES/bin/*; do
    rm -f $(basename $f)
    ln -s $f $(basename $f)
done
popd >/dev/null

popd >/dev/null
