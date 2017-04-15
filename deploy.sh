#!/bin/bash

git config --global user.email "tomomoto@mail.hoxo-m.com"
git config --global user.name "tomomoto"

git clone -b https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git blog
cd blog
rm public/.gitignore
cp -rf public/* docs
git add docs/*
git commit -m "Update"
git push origin master
