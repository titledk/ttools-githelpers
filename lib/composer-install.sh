#!/bin/bash
#Composer helper
#TODO this should probably not stay within the githelpers repo, but I don't know where it'd suit right now

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd ../../.. && pwd )";



cd $BASEDIR;
cd public;


#this can be called with and witout environment variable
if [ -z "${1}" ]; then
	composer install;
else
	#getting environment variables
	ENV="$1";
	ENVVARS="$BASEDIR/ttools/core/lib/vars-for-env.sh $ENV"
	eval `$ENVVARS`
	
	#echo $ENV_COMPOSERPATH;
	
	$ENV_COMPOSERPATH install --no-dev;
fi


