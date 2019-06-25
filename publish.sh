#!/bin/bash

echo "Running fake Publish"
BUILD_VERSION=$(sed -n 's:.*<version>\(.*\)</version>.*:\1:p' pom.xml | sed 's|> |>\n|g;1q')
cat > $WORKSPACE/BanzaiUserData.json <<DATA
{
    "gitOps": {
        "versions": {
            "test-maven" : {
                "version": "${BUILD_VERSION}",
                "meta": {
                    "some": "example meta"
                }
            }
        }
    }
    
}
DATA