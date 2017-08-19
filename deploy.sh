#!/bin/bash

echo $CIRCLE_BRANCH
echo $CI_PULL_REQUESTS
echo $CI_PULL_REQUEST
#CIRCLE_PR_BRANCH = `curl -s https://api.github.com/repos/nezarfadle/circleci-workflows/pulls/107 | jq -r '.head.ref' | jq -r '.head.ref'`

if [ "$CIRCLE_BRANCH" == "dev" ]
then
	echo "Start tests - Dev branch"
fi