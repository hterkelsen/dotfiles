#!/bin/bash

DOTFILES=$(pwd)

pushd $HOME >/dev/null

ln -s $DOTFILES/.zshrc $HOME/.zshrc
ln -s $DOTFILES/.git.zsh $HOME/.git.zsh
ln -s $DOTFILES/.dev.zsh $HOME/.dev.zsh

popd >/dev/null
