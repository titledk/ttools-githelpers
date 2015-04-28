#! /bin/bash
#basic commit & push script
#plans:
#1. Add
#2. Deploy (configurable to where)
#3. Configurable so it can deploy to different systems (for now we mostly need SilverStripe)

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd ../../.. && pwd )";

cd $BASEDIR

CURRENT_BRANCH="$(git branch | sed -n '/\* /s///p')"

#this should open a prompt
git commit

git push origin $CURRENT_BRANCH;
