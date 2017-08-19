#!/bin/bash

echo $CIRCLE_BRANCH
echo $CI_PULL_REQUESTS
echo $CI_PULL_REQUEST
URL="https://api.github.com/repos/nezarfadle/circleci-workflows/$CIRCLE_BRANCH"
CIRCLE_PR_BRANCH=`curl -s $URL | jq -r '.head.ref'`
echo $URL
echo $CIRCLE_PR_BRANCH

#if [ "$CIRCLE_BRANCH" == "dev" ]
if [ "$CIRCLE_PR_BRANCH" == "dev" ]
then
	echo "Start tests - Dev branch"
fi