#!/bin/bash -x

echo "> Make system bootable..."
export MAKEFLAGS="-j"`lscpu | grep CPU\(s\): | grep -v NUMA | awk '{print $2}'`
mkdir -p /tmp/log
sh /book/chapter-8/8.2-create-fstab.sh /tmp/log/8.2-create-fstab.sh.log
sh /book/chapter-8/8.3-make-linux-kernel.sh /tmp/log/8.3-make-linux-kernel.sh.log
sh /book/chapter-8/8.4-setup-grub.sh /tmp/log/8.4-setup-grub.sh.log

exit
