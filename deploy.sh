#!/bin/bash

git config --global user.email "jtrecenti@jtrecenti.com"
git config --global user.name "jtrecenti"

git clone -b https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git blog
cd blog
rm public/.gitignore
cp -rf public/* docs
git add docs/*
git commit -m "Update" || true
git push origin master
