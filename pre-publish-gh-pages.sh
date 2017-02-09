#!/usr/bin/env bash

ROOT_DIR=$(cd $(dirname $0) && pwd);
cd ${ROOT_DIR};

BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [[ "$BRANCH" != "master" ]]; then
  echo 'Aborting script because you are not on the right git branch (master).';
  exit 1;
fi

git branch -D temp
git checkout -b temp &&
rm -rf public/jsdoc-out
jsdoc examples -u examples -d jsdoc-out &&
mv jsdoc-out/ public/ &&
mr-doc -s examples/bdd-api -o mr-docs -n "BDD interface" &&
mr-doc -s examples/tdd-api -o mr-docs -n "TDD interface" &&
mv mr-docs public/jsdoc-out &&
cp -r public/images public/jsdoc-out &&
cp public/extra-html/* public/jsdoc-out/ &&
git checkout master &&
git branch -D temp &&
echo "all done"

