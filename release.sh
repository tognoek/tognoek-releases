#!/bin/bash

datetime=$(date +"%Y-%m-%d_%H-%M-%S")

echo "========================="
echo "Build time: $datetime"
echo "========================="

git add .
git commit -m "build $datetime"

commits=$(git rev-list --count HEAD)

echo "Current commits: $commits"

if [ "$commits" -gt 5 ]; then
    echo "Keeping last 5 commits..."
    git reset --soft HEAD~5
    git commit -m "update build $datetime"
else
    echo "Not enough commits, skipping cleanup"
fi

git push -f origin master

echo "========================="
echo "Done"
echo "========================="