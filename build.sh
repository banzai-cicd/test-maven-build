#!/bin/bash
sleep 60
NODE_VERSION=$(node -v)
echo "NODE_VERSION=${NODE_VERSION}"
BUILDCMD="mvn -s ./settings.xml clean install -U"
echo "BUILD SCRIPT - Building"
eval $BUILDCMD
cat > $WORKSPACE/BanzaiUserData.json <<DATA
{
    "coverity": {
        "buildCmd": "${BUILDCMD}"
    }
}
DATA