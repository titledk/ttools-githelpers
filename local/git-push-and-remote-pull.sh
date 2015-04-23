#! /bin/bash

if [ -z "${1}" ]; then
	echo "Please specify environment";
	exit;
fi


BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd ../.. && pwd )";

$BASEDIR/ttools/githelpers/local/git-push.sh;
$BASEDIR/ttools/githelpers/local/git-pull-remote.sh $1;