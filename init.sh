#!/bin/bash

USER_NAME="LucasIcarus"
PROJECT_NAME="ShellCreateTest"
PROJECT_DESCRIPTION="Init a project from shell"

git init
git add .
git commit -m 'first commit'

curl -u $USER_NAME https://api.github.com/user/repos -d "{\"name\":\"$PROJECT_NAME\", \"description\": \"$PROJECT_DESCRIPTION\"}"

git remote add origin git@github.com:$USER_NAME/"$PROJECT_NAME".git
git push -u origin master