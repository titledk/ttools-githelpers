#! /bin/bash
#This script pulls current branch and updates sub moduels

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd ../.. && pwd )";

cd $BASEDIR

git pull;

git submodule init;
git submodule sync;
git submodule update;