#!/usr/bin/env bash

# directory of this script
DIR="$( cd "$( dirname "$0" )" && pwd )"
echo "$DIR"
cd $DIR/../

# build
grunt build || { echo 'Build failed'; exit 1; }

# checkout new branch
WORKING_BRANCH="$(git rev-parse --abbrev-ref HEAD)"

# if there is unsaved work, stash it
test -n "$(git status --porcelain)" && $(git stash save --include-untracked) && stashed=true

git checkout --orphan build

# add all files in the dist dir to branch at root level
FILES="$(ls dist)"

mv dist/* ./ -b

git rm -rf .
for file in $FILES; do
  git add "$file" -f
  echo "$file"
  if [ -e "$file~" ]; then
    if [ -d "$file" ]; then
      rm -rf "$file"
    else
      rm "$file"
    fi
    mv "$file~" "$file"
  fi
done

git commit -m "Built $(date) : $(git log | head -1)"

# push to gh-pages
git push origin build:gh-pages -f

# return to working branch
git reset --hard $WORKING_BRANCH
git checkout $WORKING_BRANCH

# if there wast unsaved work, restore it
if $stashed; then git stash pop; fi

git branch -D build

