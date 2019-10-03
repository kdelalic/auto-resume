#!/bin/sh

git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"

git checkout -b master
git add resume.png
git commit --message "Travis build: $TRAVIS_BUILD_NUMBER" --message "[skip ci]"
git push https://${GITHUB_TOKEN}@github.com/kdelalic/auto-resume.git HEAD:master --quiet
