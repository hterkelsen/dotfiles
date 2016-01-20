# Set up things to do local development
typeset -U path

# Dart stuff
export DART_SRC="$HOME/Code/dart/sdk"
export DART_SRC_OUT="$DART_SRC/out/ReleaseX64"

# Add depot_tools
path=( $HOME/Code/depot_tools $path[@] )

# Add Android stuff
export ANDROID_SDK="$HOME/bin/android-sdk-linux"
path=( $ANDROID_SDK/platform-tools $path[@] )
