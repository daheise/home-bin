#!/usr/bin/env bash
git checkout master
git pull upstream master
git push origin master

git fetch --prune origin && \
git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -d

git fetch --prune upstream && \
git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -d
