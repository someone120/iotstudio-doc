#!/bin/bash -e

# checkout to the gh-pages branch
git checkout gh-pages

# pull the latest updates
git pull origin gh-pages --rebase

# copy the static site files into the current directory.
cp -R _book/* .

# remove '_book' directory
#git clean -fx node_modules
git clean -fx _book

# add all files
git add .

# commit
git commit -m 'publish gh-pages'
# push to the origin
git push origin gh-pages

# checkout to the master branch
git checkout master