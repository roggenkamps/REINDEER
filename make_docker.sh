#! /bin/bash

docker build \
       --file "$1" \
       --label "reindeer-master" \
       --tag "reindeer:master-2024-08-01" \
       .

