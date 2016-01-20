#!/bin/bash

DOTFILES=$(pwd)

pushd $HOME >/dev/null

ln -s $DOTFILES/.zshrc $HOME/.zshrc
ln -s $DOTFILES/.git.zsh $HOME/.git.zsh
ln -s $DOTFILES/.dev.zsh $HOME/.dev.zsh

mkdir -p $HOME/bin
ln -s $DOTFILES/bin/dart2jsd $HOME/bin/dart2jsd
ln -s $DOTFILES/bin/dart2jsd-fast $HOME/bin/dart2jsd-fast
ln -s $DOTFILES/bin/d8d $HOME/bin/d8d

popd >/dev/null
