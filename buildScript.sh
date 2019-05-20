#!/bin/bash 

echo "BUILD SCRIPT - Building" 
mvn -s ./settings.xml clean install -U
echo "test-maven $BUILD_VERSION" > $WORKSPACE/anotherTestFile1
