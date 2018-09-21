#!/usr/bin/env bash
VERSION=$1

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit 1
fi

YAPILY_SERVER_PATH='https://api.yapily.com/docs/swagger.json'
#  --model-package yapily.sdk \
#  --api-package yapily.sdk \
#  --group-id yapily \
#  --artifact-id yapily_sdk \
#  -DpubName=yapily_sdk \

java -jar ./swagger-codegen-cli-2.4.0-20180830.185609-315.jar generate \
  -DbrowserClient=false \
  -DpubVersion=$VERSION \
  -DpubName=yapily_sdk \
  -DpubDescription="Yapily Flutter SDK" \
  --artifact-version $VERSION \
  -i $YAPILY_SERVER_PATH \
  -l dart \

