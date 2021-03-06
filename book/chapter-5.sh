#!/bin/bash -x
set -e
echo "2>&1 | tee 2>&1 | tee 2>&1 | tee  Chapter 5 - Build toolchain..."
export MAKEFLAGS="-j"`lscpu | grep CPU\(s\): | grep -v NUMA | awk '{print $2}'`

mkdir -p /tmp/log
sh -x /book/chapter-5/5.4-make-binutils.sh 2>&1 | tee  /tmp/log/5.4-make-binutils.sh.log
sh -x /book/chapter-5/5.5-make-gcc.sh 2>&1 | tee  /tmp/log/5.5-make-gcc.sh.log

# /tmp/gcc/build/include/type_traits:921:64: error: there are no arguments to '__is_constructible' that depend on a template parameter, so a declaration of '__is_constructible' must be available [-fpermissive]
export AR=/tools/bin/x86_64-lfs-linux-gnu-ar
export AS=/tools/bin/x86_64-lfs-linux-gnu-as
export CXXFILT=/tools/bin/x86_64-lfs-linux-gnu-c++filt
export CXX=/tools/bin/x86_64-lfs-linux-gnu-g++
export CC=/tools/bin/x86_64-lfs-linux-gnu-gcc
export LD=/tools/bin/x86_64-lfs-linux-gnu-ld
export RANLIB=/tools/bin/x86_64-lfs-linux-gnu-ranlib
export PATH=/tools/bin:$PATH

sh -x /book/chapter-5/5.6-make-linux-api-headers.sh 2>&1 | tee  /tmp/log/5.6-make-linux-api-headers.sh.log
sh -x /book/chapter-5/5.7-make-glibc.sh 2>&1 | tee  /tmp/log/5.7-make-glibc.sh.log
sh -x /book/chapter-5/5.8-make-libstdc.sh 2>&1 | tee  /tmp/log/5.8-make-libstdc.sh.log
sh -x /book/chapter-5/5.9-make-binutils.sh 2>&1 | tee  /tmp/log/5.9-make-binutils.sh.log
sh -x /book/chapter-5/5.10-make-gcc.sh 2>&1 | tee  /tmp/log/5.10-make-gcc.sh.log
sh -x /book/chapter-5/5.11-make-tcl.sh 2>&1 | tee  /tmp/log/5.11-make-tcl.sh.log
sh -x /book/chapter-5/5.12-make-expect.sh 2>&1 | tee  /tmp/log/5.12-make-expect.sh.log
sh -x /book/chapter-5/5.13-make-dejagnu.sh 2>&1 | tee  /tmp/log/5.13-make-dejagnu.sh.log
sh -x /book/chapter-5/5.14-make-m4.sh 2>&1 | tee  /tmp/log/5.14-make-m4.sh.log
sh -x /book/chapter-5/5.15-make-ncurses.sh 2>&1 | tee  /tmp/log/5.15-make-ncurses.sh.log
sh -x /book/chapter-5/5.16-make-bash.sh 2>&1 | tee  /tmp/log/5.16-make-bash.sh.log
sh -x /book/chapter-5/5.17-make-bison.sh 2>&1 | tee  /tmp/log/5.17-make-bison.sh.log
sh -x /book/chapter-5/5.18-make-bzip2.sh 2>&1 | tee  /tmp/log/5.18-make-bzip2.sh.log
sh -x /book/chapter-5/5.19-make-coreutils.sh 2>&1 | tee  /tmp/log/5.19-make-coreutils.sh.log
sh -x /book/chapter-5/5.20-make-diffutils.sh 2>&1 | tee  /tmp/log/5.20-make-diffutils.sh.log
sh -x /book/chapter-5/5.21-make-file.sh 2>&1 | tee  /tmp/log/5.21-make-file.sh.log
sh -x /book/chapter-5/5.22-make-findutils.sh 2>&1 | tee  /tmp/log/5.22-make-findutils.sh.log
sh -x /book/chapter-5/5.23-make-gawk.sh 2>&1 | tee  /tmp/log/5.23-make-gawk.sh.log
sh -x /book/chapter-5/5.24-make-gettext.sh 2>&1 | tee  /tmp/log/5.24-make-gettext.sh.log
sh -x /book/chapter-5/5.25-make-grep.sh 2>&1 | tee  /tmp/log/5.25-make-grep.sh.log
sh -x /book/chapter-5/5.26-make-gzip.sh 2>&1 | tee  /tmp/log/5.26-make-gzip.sh.log
sh -x /book/chapter-5/5.27-make-make.sh 2>&1 | tee  /tmp/log/5.27-make-make.sh.log
sh -x /book/chapter-5/5.28-make-patch.sh 2>&1 | tee  /tmp/log/5.28-make-patch.sh.log
sh -x /book/chapter-5/5.29-make-perl.sh 2>&1 | tee  /tmp/log/5.29-make-perl.sh.log
sh -x /book/chapter-5/5.30-make-sed.sh 2>&1 | tee  /tmp/log/5.30-make-sed.sh.log
sh -x /book/chapter-5/5.31-make-tar.sh 2>&1 | tee  /tmp/log/5.31-make-tar.sh.log
sh -x /book/chapter-5/5.32-make-texinfo.sh 2>&1 | tee  /tmp/log/5.32-make-texinfo.sh.log
sh -x /book/chapter-5/5.33-make-util-linux.sh 2>&1 | tee  /tmp/log/5.33-make-util-linux.sh.log
sh -x /book/chapter-5/5.34-make-xz.sh 2>&1 | tee  /tmp/log/5.34-make-xz.sh.log
sh -x /book/chapter-5/5.35-strip.sh 2>&1 | tee  /tmp/log/5.35-strip.sh.log
