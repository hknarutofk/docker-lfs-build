#!/bin/bash
echo "run as root"
# LFS mount point
export LFS=`pwd`/lfs
# loop device 动态寻找一个空闲设备
export LOOP=`losetup -f`

# mount point of loop device, for creating the iso iamge
export LOOP_DIR=`pwd`/image/loop

# inital ram disk size in KB
# must be in sync with CONFIG_BLK_DEV_RAM_SIZE
export IMAGE_SIZE=1000000

# output images
export IMAGE_RAM=`pwd`/dist/lfs.ram
export IMAGE_BZ2=`pwd`/dist/lfs.bz2
export IMAGE_ISO=`pwd`/dist/lfs.iso
export IMAGE_HDD=`pwd`/dist/lfs.hdd

# location of initrd tree
export INITRD_TREE=$LFS


echo "> Creating ramdisk..."
cd image

# Create yet another loop device if not exist
[ -e $LOOP ] || mknod $LOOP b 7 0

# create ramdisk file of IMAGE_SIZE
dd if=/dev/zero of=$IMAGE_RAM bs=1k count=$IMAGE_SIZE

# plug off any virtual fs from loop device
losetup -d $LOOP

# associate it with ${LOOP}
losetup $LOOP $IMAGE_RAM

# make an ext2 filesystem
mkfs.ext4 -q -m 0 $LOOP $IMAGE_SIZE

# ensure loop2 directory
[ -d $LOOP_DIR ] || mkdir -pv $LOOP_DIR

# mount it
mount $LOOP $LOOP_DIR
rm -rf $LOOP_DIR/lost+found

# copy LFS system without build artifacts
pushd $INITRD_TREE
cp -dpR $(ls -A | grep -Ev "sources|tools|book|image|dist") $LOOP_DIR
popd

# show statistics
df $LOOP_DIR

echo "Compressing system ramdisk image.."
bzip2 -c $IMAGE_RAM > $IMAGE_BZ2

# Cleanup
umount $LOOP_DIR
losetup -d $LOOP
rm -rf $LOOP_DIR
