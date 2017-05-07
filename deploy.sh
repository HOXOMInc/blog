#!/bin/bash
set -e
echo `ls`
rm -rf docs || exit 0;
mkdir docs

cp public/* docs/
cd docs

git config user.email "example@example.com"
git config user.name "Travis-CI"

git add .
git commit -am "Deploy blog"
git push --force --quiet "https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git" master:master > /dev/null 2>&1
