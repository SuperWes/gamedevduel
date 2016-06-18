#!/bin/bash

set -e

rm -rf ../site-deploy

git clone https://${GH_TOKEN}@github.com/SuperWes/gamedevduel.git ../site-deploy

cp -R _site/* ../site-deploy

cd ../site-deploy

git config user.email "seifertim@gmail.com"
git config user.name "SeiferTim"
git add -A .
git commit -a -m "Travis #$TRAVIS_BUILD_NUMBER"
git push --quiet origin gh-pages > /dev/null 2>&1
