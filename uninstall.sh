#!/bin/sh

set -e
CHPG_HOME_DIR="$HOME/.chpg"

# remove the bin

      [ -n "$PREFIX" ] || PREFIX="/usr/local"
      BIN_PATH="$PREFIX/bin"
      rm -f "$BIN_PATH/chpg" > /dev/null

# remove the installed source

      rm -rf "$CHPG_HOME_DIR"

# done!  print out some optional removal instructions

      echo "Done.\n"
      echo "Be sure to remove the \`eval \"\$(chpg init)\"\` line from your shell startup script and reload your shell!\n"
