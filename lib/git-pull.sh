#! /bin/bash
#This script pulls current branch and updates sub moduels

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd ../.. && pwd )";

cd $BASEDIR

CURRENT_BRANCH="$(git branch | sed -n '/\* /s///p')"

git pull origin $CURRENT_BRANCH;

git submodule init;
git submodule sync;
git submodule update;


POST_PULL_SCRIPT=$1;
$POST_PULL_SCRIPT;