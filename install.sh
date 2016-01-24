#!/bin/bash

DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pushd $HOME >/dev/null

ln -s $DOTFILES/.zshrc $HOME/.zshrc
ln -s $DOTFILES/.git.zsh $HOME/.git.zsh
ln -s $DOTFILES/.dev.zsh $HOME/.dev.zsh
ln -s $DOTFILES/.ubuntu.zsh $HOME/.ubuntu.zsh

mkdir -p $HOME/bin
ln -s $DOTFILES/bin/dart2jsd $HOME/bin/dart2jsd
ln -s $DOTFILES/bin/dart2jsd-fast $HOME/bin/dart2jsd-fast
ln -s $DOTFILES/bin/d8d $HOME/bin/d8d
chmod +x $HOME/bin/dart2jsd
chmod +x $HOME/bin/dart2jsd-fast
chmod +x $HOME/bin/d8d

popd >/dev/null
