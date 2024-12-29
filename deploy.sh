#!/usr/bin/env sh

#abort on errors
set-e

env PUBLIC_URL=https://domi-kunz.github.io/adi-spanien npm run build

cd build

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:domi-kunz/adi-spanien.git main:gh-pages
