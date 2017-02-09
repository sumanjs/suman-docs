#!/usr/bin/env bash


#!/usr/bin/env bash

BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [[ "$BRANCH" != "master" ]]; then
  echo 'Aborting script because you are not on the right git branch (master).';
  exit 1;
fi

git add . &&
git add -A &&
git commit -am "Temp commit before publish to gh-pages"
git subtree push --prefix public/jsdoc-out githubio master
