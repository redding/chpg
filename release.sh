#!/bin/sh

CHPG_RELEASE="0.0.1.alpha3"

# check uncommitted changes

      if ! git diff-index --quiet HEAD --; then
        echo "There are files that need to be committed first."
      else
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
      fi
