#!/bin/bash
#Composer helper
#TODO this should probably not stay within the githelpers repo, but I don't know where it'd suit right now

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd ../../.. && pwd )";

cd $BASEDIR;
cd public;
composer install;