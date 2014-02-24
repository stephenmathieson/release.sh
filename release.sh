#!/bin/bash

#
# release
#
# Copyright (c) 2014 Stephen Mathieson
# MIT licensed
#

# tag to release
TAG="$1"

# dependencies
REQUIRED="git-release git-changelog"

# places to increment version number
FILES="package.json component.json"

# must be in a git repo
if [ ! -d ".git" ]; then
  echo "not in a git repo"
  exit 1
fi

# must specify a tag
if [ -z $TAG ]; then
  echo >&2 "tag required.";
  exit 1;
fi

# check required bins
for e in $REQUIRED; do
  command -v $e >/dev/null 2>&1 || {
    echo >&2 "$e must be installed.";
    exit 1;
  }
done

# populate changelog
git changelog --tag $TAG || true

# find changelog
CHANGELOG=`ls | egrep 'change|history' -i`
git add $CHANGELOG

# open files to bump version numbers
for file in $FILES; do
  test -f "$file" && {
    $EDITOR $file;
    git add $file
  }
done

# actually release
git release $TAG
