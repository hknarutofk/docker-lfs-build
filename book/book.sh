#!/bin/bash -x
set -e
# prepare to build
# 镜像内已经包含了源码
# /book/chapter-3.sh

# execute rest as root
exec sudo -E -u root /bin/sh - <<EOF
#  change ownership
chown -R root:root $LFS/tools

# prevent "bad interpreter: Text file busy"
sync
set -e
# continue
sh -x /book/chapter-5.sh

sh -x /book/chapter-6.sh

sh -x /book/chapter-7.sh

sh -x /book/chapter-8.sh

sh -x /book/chapter-9.sh

# create dist
# /image/image.sh
EOF
