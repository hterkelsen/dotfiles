#!/bin/bash

DOTFILES=$(pwd)

pushd $HOME >/dev/null

# install spacemacs file
rm .spacemacs
ln -s $DOTFILES/.spacemacs .spacemacs

# install spacemacs private layers
pushd .emacs.d >/dev/null
PRIVATE_LAYER=$DOTFILES/.emacs.d/private
rm -rf $(basename $PRIVATE_LAYER)
ln -s $PRIVATE_LAYER $(basename $PRIVATE_LAYER)
popd >/dev/null

popd >/dev/null
