#!/bin/sh

CHPG_RELEASE="0.0.1.alpha1"

# check uncommitted changes

      if ! git diff-index --quiet HEAD --; then
        echo "There are files that need to be committed first." && return 1
      fi

# tag the release

      if git tag -a -m "Release $CHPG_RELEASE" "$CHPG_RELEASE"; then
        echo "Tagged $CHPG_RELEASE release."

# push the changes and tags

        git push
        git push --tags

        echo "Pushed git commits and tags"
      else
        echo "Release aborted."
      fi


