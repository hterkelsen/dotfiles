# Set up things to do local development
typeset -U path

# Dart SDK
export DART_SDK="$HOME/bin/dart-sdk"
path=( $DART_SDK/bin $path[@] )

export DARTIUM_BIN="$HOME/bin/dartium/chrome"
alias dartium="$DARTIUM_BIN"

# Dart development stuff
export DART_SRC="$HOME/Code/dart/sdk"
export DART_SRC_OUT="$DART_SRC/out/ReleaseX64"

# Add Flutter
export FLUTTER="$HOME/Code/flutter"
path=( $FLUTTER/bin $path[@] )

# Add pub globally activated executables
path=( $HOME/.pub-cache/bin $path[@] )

# Add depot_tools
path=( $HOME/Code/depot_tools $path[@] )

# Add Android stuff
export ANDROID_SDK="$HOME/bin/android-sdk-linux"
path=( $ANDROID_SDK/platform-tools $path[@] )
