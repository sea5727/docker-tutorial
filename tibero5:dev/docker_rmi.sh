#!/bin/sh

docker stop tibero5;
docker rm tibero5;
docker rmi sea5727/tibero5:dev;
