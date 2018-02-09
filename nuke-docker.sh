#!/bin/bash
docker stop $(docker ps -a -q)
docker rm `docker ps --no-trunc -aq`
docker rmi $(docker images -q)
