#!/bin/bash

docker-compose exec lfs sh /image/1.configure-syslinux.sh
sudo sh -x buildImageOnHostOS.sh
docker-compose exec lfs sh /image/3.build-iso.sh