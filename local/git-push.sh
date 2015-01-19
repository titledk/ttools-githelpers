#! /bin/bash
#This script pushes the current branch to origin

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd ../../.. && pwd )";

cd $BASEDIR
CURRENT_BRANCH="$(git branch | sed -n '/\* /s///p')"

git pull origin $CURRENT_BRANCH;
git push origin $CURRENT_BRANCH;