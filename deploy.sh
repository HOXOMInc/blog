#!/bin/bash
git config --global user.email "tomomoto@mail.hoxo-m.com"
git config --global user.name "tomomoto"
echo ${TRAVIS_REPO_SLUG}.git
git clone https://${TRAVIS_REPO_SLUG}.git
cd blog
rm public/.gitignore
cp -rf public/* docs
git add docs/*
git commit -ma "Update"
git push origin master
