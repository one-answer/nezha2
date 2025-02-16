#!/bin/sh

VERSION=v1
if [ -n "$1" ] ;then
  VERSION="$1"
fi
sed -i "s|aolifu/nezha2:.*|aolifu/nezha2:$VERSION|g" ./docker-compose.yml

docker-compose up -d

