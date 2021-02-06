#!/bin/bash

# 纠结的设计，从容器中把下载的源码拷贝出来
dockerid=`docker run -i -d --entrypoint=/bin/bash evilfreelancer/docker-lfs-build`
docker cp  "$dockerid":/lfs/sources .
docker rm -f "$dockerid"

cp docker-compose.yml.dist docker-compose.yml
docker-compose up -d

docker-compose exec lfs /bin/bash -x /book/book.sh