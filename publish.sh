#!/bin/bash

echo "Running fake Publish"
BUILD_VERSION=$(sed -n 's:.*<version>\(.*\)</version>.*:\1:p' pom.xml | sed 's|> |>\n|g;1q')
echo "{\"test-maven\" : { \"version\":  \"${BUILD_VERSION}\", \"meta\": { \"some\" : \"meta\" } } }" > $WORKSPACE/gitOpsVersions.json
echo "gitOpsVersions file created!"