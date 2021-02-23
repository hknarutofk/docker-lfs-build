#!/bin/bash -x

echo "2>&1 | tee  Configure system..."
mkdir -p /tmp/log
sh -x /book/chapter-7/7.2-make-lfs-bootscripts.sh 2>&1 | tee  /tmp/log/7.2-make-lfs-bootscripts.sh.log
sh -x /book/chapter-7/7.4-manage-devices.sh 2>&1 | tee  /tmp/log/7.4-manage-devices.sh.log
sh -x /book/chapter-7/7.5-configure-network.sh 2>&1 | tee  /tmp/log/7.5-configure-network.sh.log
sh -x /book/chapter-7/7.6-configure-systemv.sh 2>&1 | tee  /tmp/log/7.6-configure-systemv.sh.log
sh -x /book/chapter-7/7.x-configure-bash.sh 2>&1 | tee  /tmp/log/7.x-configure-bash.sh.log

exit
