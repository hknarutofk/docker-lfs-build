#!/bin/bash -x

# prepare to build
# 镜像内已经包含了源码
# /book/chapter-3.sh

# execute rest as root
exec sudo -E -u root /bin/sh - <<EOF
#  change ownership
chown -R root:root $LFS/tools

# prevent "bad interpreter: Text file busy"
sync

# continue
/book/chapter-5.sh
echo "chapter 5 finished, type Enter to continue" && read

/book/chapter-6.sh
echo "chapter 6 finished, type Enter to continue" && read

/book/chapter-7.sh
echo "chapter 7 finished, type Enter to continue" && read

/book/chapter-8.sh
echo "chapter 8 finished, type Enter to continue" && read

/book/chapter-9.sh
echo "chapter 9 finished, type Enter to continue" && read

# create dist
# /image/image.sh
EOF
