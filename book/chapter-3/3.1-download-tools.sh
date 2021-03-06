#!/bin/bash -x

cd $LFS/sources

echo "Downloading LFS packages.."
echo "Getting wget-list.."
# wget --timestamping http://www.linuxfromscratch.org/lfs/view/8.3/wget-list
wget --timestamping https://git.trustie.net/hknaruto/lfs83_wget_list/raw/branch/master/wget-list.new -O wget-list

echo "Getting packages.."
wget --timestamping --continue --input-file=wget-list

echo "Getting md5.."
# wget --timestamping http://www.linuxfromscratch.org/lfs/downloads/8.3/md5sums
# 有几个包找不到，到github上下载的，md5对不应不上
wget --timestamping https://git.trustie.net/hknaruto/lfs83_wget_list/raw/branch/master/md5sum.new -O md5sums

echo "Check hashes.."
md5sum -c md5sums

echo "Downloading syslinux package.."
wget --timestamping https://git.trustie.net/hknaruto/lfs83_wget_list/raw/branch/master/syslinux-6.03.tar.xz
echo "Check hash.."
echo "26d3986d2bea109d5dc0e4f8c4822a459276cf021125e8c9f23c3cca5d8c850e $LFS/sources/syslinux-6.03.tar.xz" | sha256sum -c -
