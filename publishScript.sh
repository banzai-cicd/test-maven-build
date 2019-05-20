#!/bin/bash

echo "Running fake Publish"
BUILD_VERSION=$(sed -n 's:.*<version>\(.*\)</version>.*:\1:p' pom.xml | sed 's|> |>\n|g;1q')
echo "test-maven $BUILD_VERSION" > $WORKSPACE/gitOpsVersions
echo "gitOpsVersions file created!"