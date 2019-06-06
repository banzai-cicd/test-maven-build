#!/bin/bash 
BUILDCMD="mvn -s ./settings.xml clean install -U"
echo "BUILD SCRIPT - Building"
eval $BUILDCMD
echo "USER_DATA={'coverity' : { 'buildCmd' : '${BUILDCMD}' } }"