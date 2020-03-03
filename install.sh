#!/bin/sh

set -e

CHPG_HOME_DIR="$HOME/.chpg"
CHPG_RELEASE="0.0.1.alpha1"

# make sure the bin path is in place

      [ -n "$PREFIX" ] || PREFIX="/usr/local"
      BIN_PATH="$PREFIX/bin"
      mkdir -p "$BIN_PATH"

# download the release tag and link to the bin path

      rm -rf "$CHPG_HOME_DIR" && mkdir -p "$CHPG_HOME_DIR"
      pushd "$CHPG_HOME_DIR" > /dev/null &&
        curl -L "https://github.com/redding/chpg/tarball/$CHPG_RELEASE" | tar xzf - */libexec/*
        mv *chpg-* "chpg-$CHPG_RELEASE"
        ln -sf "chpg-$CHPG_RELEASE/libexec"
      popd > /dev/null

# install in the bin path

      ln -sf "$CHPG_HOME_DIR/libexec/chpg" "$BIN_PATH"

# done!

      echo "Installed at ${BIN_PATH}/chpg"
