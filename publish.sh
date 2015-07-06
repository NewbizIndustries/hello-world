#!/bin/bash

version=$1
image="newbizindustries/hello-world"

mvn package docker:build
id=`docker images ${image} | grep latest | awk '{print $3}'`
docker tag -f ${id} ${image}:${version}
docker push ${image}:${version}
docker push ${image}:latest