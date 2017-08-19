#!/bin/bash
if [ "$CIRCLE_BRANCH" == "dev" ]
then
	echo "Start tests - Dev branch"
else
	echo "No tests to run"
fi