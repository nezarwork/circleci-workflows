#!/bin/bash

echo $CIRCLE_BRANCH
if [ "$CIRCLE_BRANCH" == "dev" ]
then
	echo "Start tests - Dev branch"
fi