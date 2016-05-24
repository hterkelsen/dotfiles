# Set up things to do local development
typeset -U path

# Dart
if [[ -f ~/.dvm/scripts/dvm ]]; then
  . ~/.dvm/scripts/dvm
fi

# Dart development stuff
export DART_SRC="$HOME/Code/dart/sdk"
export DART_SRC_OUT="$DART_SRC/out/ReleaseX64"

# Add Flutter
export FLUTTER="$HOME/Code/flutter"
path=( $FLUTTER/bin $path[@] )

# Add pub globally activated executables
path=( $HOME/.pub-cache/bin $path[@] )

# Add depot_tools
path=( $path[@] $HOME/Code/depot_tools )

# Add Android stuff
export ANDROID_SDK="$HOME/bin/android-sdk-linux"
path=( $ANDROID_SDK/platform-tools $path[@] )

# Google Cloud SDK
export GOOGLE_CLOUD_SDK="$HOME/bin/google-cloud-sdk"

# The next line updates PATH for the Google Cloud SDK.
source "$GOOGLE_CLOUD_SDK/path.zsh.inc"

# The next line enables shell command completion for gcloud.
source "$GOOGLE_CLOUD_SDK/completion.zsh.inc"

# Haskell
path=( $HOME/.cabal/bin $path[@] )

# Go
export GOPATH="$HOME/Code/go"
path=( $GOPATH/bin $path[@] )

# Node
export NVM_DIR="/usr/local/google/home/het/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
