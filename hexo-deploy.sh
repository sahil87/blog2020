#!/bin/bash

git add --all :/
git commit --dry-run > /dev/null
#0 if no changes, 1 if changes to commit
DIFF_EXISTS=$?
if [ "$DIFF_EXISTS" -eq 0 ];
then
  git commit -m "Latest changes in blog"
  git push
else
  echo "No changes to commit in $1"
fi

hexo generate
hexo deploy

echo "Go to https://sahil87.github.io/bloghexo/ to check the blog"
