#! /bin/bash
#
# $1 = ID of image to run
#
# echo "id length: ${#1}"
# echo "id length: $((${#1}>0))"

if ((${#1}>0))
then
   docker run  \
          -i   \
          -m 800MB \
          -t   \
          -v .:/REINDEER \
          -w /REINDEER \
          "$1" ;
else
       echo "missing image identifier: run_docker.sh image_id"
fi
