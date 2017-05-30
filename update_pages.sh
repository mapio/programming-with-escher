#!/bin/bash

git checkout master
jupyter nbconvert --execute --to hide_code_html notebook.ipynb
git checkout gh-pages
mv -f notebook.html index.html
git commit --amend -m'Initial commit' index.html
git push -f origin gh-pages
git checkout master
git push origin master
