# Source profile like .bashrc
if [ -f /etc/profile ]; then
  source /etc/profile
fi

export DOTDIR=${ZDOTDIR:=$HOME}

export PATH=
path=(
  $DOTDIR/.bin.local
  $DOTDIR/.bin
  /usr/local/bin
  /usr/bin
  /bin
  /usr/local/sbin
  /usr/sbin
  /sbin
)
export MANPATH=":$DOTDIR/.man"

# Set up custom functions folder
# TODO(hterkelsen): do this in install.sh
ZFUNCTIONS="$HOME/.zfunctions"
fpath=( $ZFUNCTIONS $fpath )

autoload -U colors
colors

# Set up dircolors
eval `dircolors "$HOME/.dir_colors/dircolors"`

# Run any file like it's executable
autoload -U zsh-mime-setup
zsh-mime-setup

# Ctrl-W on words
autoload -U select-word-style
select-word-style bash

# Enable autocomplete
autoload -U compinit
compinit
setopt hash_list_all     # hash everything before completion
setopt no_complete_aliases  # autocomplete aliases
setopt always_to_end     # move cursor to end of completed word
setopt complete_in_word  # allow completion in middle of word
setopt correct           # spelling correction
setopt list_ambiguous    # complete as much as possible before it gets ambiguous

zstyle ':completion::complete:*' use-cache on              # completion caching
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'  # ignore case
zstyle ':completion:*' menu select=2                       # use menu if more than 2 items
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}      # use colors

# Use the 'pure' prompt
# Should have already cloned the pure repo and run:
#     $ ln -s "$PURE_REPO/pure.zsh" "$ZFUNCTIONS/prompt_pure_setup"
#     $ ln -s "$PURE_REPO/async.zsh" "$ZFUNCTIONS/async"
autoload -U promptinit && promptinit
export PURE_PROMPT_SYMBOL="λ"
prompt pure

# Set up pushd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_silent
setopt pushd_to_home

# Set up history
setopt share_history  # share history between terminals
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.history
setopt APPEND_HISTORY # append to the end of the history file

# Miscellaneous options
setopt auto_remove_slash
setopt chase_links

# Vim mode
bindkey -v
bindkey "jk" vi-cmd-mode

# Various variables
export EDITOR="vim"
export P4CONFIG=".p4config"
export P4EDITOR="$EDITOR"

# Basic aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Set up git stuff
alias gcl='git clone --recursive'

alias ga='git add'
alias gaa='git add --all'
alias gaap='git add --all -p'

alias gb='git branch'
alias gba='git branch -a'

alias gc='git commit -v'
alias gc!='git commit -v --amend'

alias gco='git checkout'
alias gcb='git checkout -b'
alias gcm='git checkout master'

alias gd='git diff'
alias gdc='git diff --cached'

alias gl='git pull'

alias gm='git merge'
alias gmm='git merge master'

alias gp='git push'

alias grv='git remote -v'

alias gst='git status'

# Tmux sessions
alias s=session_finder
_tmux_sessions() { tmux ls -F "#{session_name}" 2>/dev/null }
compdef '_arguments "1:tmux session:($(_tmux_sessions))"' session_finder

# Dart
export DART_SRC="$HOME/Projects/dart/sdk"
export DART_SRC_OUT="$DART_SRC/out/ReleaseX64"

path+=( $HOME/dart-sdk/bin $HOME/.pub-cache/bin )

# Add Flutter
export FLUTTER="$HOME/Projects/flutter"
path+=( $FLUTTER/bin )

# Add depot_tools
path+=( $HOME/Projects/depot_tools )

# Add Android stuff
export ANDROID_HOME="$HOME/Android/Sdk"
path+=( $ANDROID_HOME/platform-tools )

# Haskell
path+=( $HOME/.cabal/bin )

# Go
export GOPATH="$HOME/Projects/go"
path+=( $GOPATH/bin )

# Set up Ubuntu stuff
alias agi='sudo apt-get install'

# Secret, machine-specific stuff
if [ -f $HOME/.secret.zsh ]; then
  source $HOME/.secret.zsh
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
