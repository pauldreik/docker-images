#!/bin/sh
#
# invoke this standing in the directory containing the docker file

set -eux

if [ ! -e Dockerfile ] ; then
  echo "execute in the directory where you have your dockerfile"
  exit 1
fi

dirname=$(pwd)

# get the tag from the dirname
tag=pauldreik/$(basename $dirname)

echo using tag=$tag


docker build -t $tag .

echo "optionally publish with: docker push $tag:latest"

