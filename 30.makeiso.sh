#!/bin/bash

docker-compose exec lfs sudo sh -x /image/1.configure-syslinux.sh
sudo sh -x buildImageOnHostOS.sh
docker-compose exec lfs sudo sh -x /image/3.build-iso.sh