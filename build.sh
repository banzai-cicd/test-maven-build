#!/bin/bash 
BUILDCMD="mvn -s ./settings.xml clean install -U"
echo "BUILD SCRIPT - Building"
eval $BUILDCMD
echo "{\"coverity\" : { \"buildCmd\" : \"${BUILDCMD}\" } }" > $WORKSPACE/BanzaiUserData.json