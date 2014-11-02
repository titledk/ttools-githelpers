#!/bin/bash
#Pulling in a repo from a remote environment
#Needs to be supplied with an environment, and can be supplied with 
#a post-pull-script

if [ -z "${1}" ]; then
	echo "Please specify enviornment";
	exit;
fi

ENV=$1;
POST_PULL_SCRIPT=$2;



BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd ../.. && pwd )";
ENVVARS="$BASEDIR/ttools-core/lib/vars-for-env.sh $ENV"
eval `$ENVVARS`




SERVER_PULL_CMD="$ENV_REPODIR/ttools-githelpers/lib/git-pull.sh";
SERVER_POST_PULL_CMD="";
if [ "${POST_PULL_SCRIPT}" ]; then
	SERVER_POST_PULL_CMD="$POST_PULL_SCRIPT;";
fi


SERVER_COMMANDS="$SERVER_PULL_CMD;$SERVER_POST_PULL_CMD";

#echo $SERVER_COMMANDS;
#exit;

ssh $ENV_CUSTOM_SSHCONNECTIONSTR -t $SERVER_COMMANDS;

