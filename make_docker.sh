#! /bin/bash
# $1 = Dockerfile to use
#
echo "id length: ${#1}"
echo "id length: $((${#1}>0))"

os=$(echo "$1" | sed -e 's/Dockerfile_//')
echo "os: $os"

ts=$(date +'%g%m%d%H%M%S')
if ((${#os}>0))
then
    docker build \
           --file "Dockerfile_$os" \
           --label "reindeer-$os" \
           --tag "reindeer:$os-$ts" \
           .
fi
