#!/bin/sh

#if [ "`git status -s`" ]
#then
#    echo "The working directory is dirty. Please commit any pending changes."
#    exit 1;
#fi

echo "Removing existing files"
rm -rf public/*

echo "Generating site"
hugo --minify

echo "Moving to girth repo"
cd ..
echo `pwd`

echo "Deleting old publication"
rm -rf public
mkdir public
git worktree prune
rm -rf .git/worktrees/public/

echo "Checking out gh-pages branch into public"
git worktree add -B gh-pages public origin/gh-pages

echo "Removing existing files"
rm -rf public/*

echo "Copying build into repo"
cp -R girth_docs/public .

echo "Updating gh-pages branch"
cd public && git add --all && git commit -m "Publishing to gh-pages (publish.sh)"

echo "Pushing to github"
git push 

echo "Removing Directory"
rm -rf public

echo "DONT FORGET TO UPDATE WHERE THE SUBMODULE POINTS TO"
echo "git add girth_docs"
echo "git commit -m <updated my submodule>"
echo "git push"
