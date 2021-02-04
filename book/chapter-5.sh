#!/bin/bash -x

echo ">>> Chapter 5 - Build toolchain..."
export MAKEFLAGS="-j6"

/book/chapter-5/5.4-make-binutils.sh
/book/chapter-5/5.5-make-gcc.sh

# /tmp/gcc/build/include/type_traits:921:64: error: there are no arguments to '__is_constructible' that depend on a template parameter, so a declaration of '__is_constructible' must be available [-fpermissive]
export AR=/tools/bin/x86_64-lfs-linux-gnu-ar
export AS=/tools/bin/x86_64-lfs-linux-gnu-as
export CXXFILT=/tools/bin/x86_64-lfs-linux-gnu-c++filt
export CXX=/tools/bin/x86_64-lfs-linux-gnu-g++
export CC=/tools/bin/x86_64-lfs-linux-gnu-gcc
export LD=/tools/bin/x86_64-lfs-linux-gnu-ld
export RANLIB=/tools/bin/x86_64-lfs-linux-gnu-ranlib
export PATH=/tools/bin:$PATH

/book/chapter-5/5.6-make-linux-api-headers.sh
/book/chapter-5/5.7-make-glibc.sh
/book/chapter-5/5.8-make-libstdc.sh
/book/chapter-5/5.9-make-binutils.sh
/book/chapter-5/5.10-make-gcc.sh
/book/chapter-5/5.11-make-tcl.sh
/book/chapter-5/5.12-make-expect.sh
/book/chapter-5/5.13-make-dejagnu.sh
/book/chapter-5/5.14-make-m4.sh
/book/chapter-5/5.15-make-ncurses.sh
/book/chapter-5/5.16-make-bash.sh
/book/chapter-5/5.17-make-bison.sh
/book/chapter-5/5.18-make-bzip2.sh
/book/chapter-5/5.19-make-coreutils.sh
/book/chapter-5/5.20-make-diffutils.sh
/book/chapter-5/5.21-make-file.sh
/book/chapter-5/5.22-make-findutils.sh
/book/chapter-5/5.23-make-gawk.sh
/book/chapter-5/5.24-make-gettext.sh
/book/chapter-5/5.25-make-grep.sh
/book/chapter-5/5.26-make-gzip.sh
/book/chapter-5/5.27-make-make.sh
/book/chapter-5/5.28-make-patch.sh
/book/chapter-5/5.29-make-perl.sh
/book/chapter-5/5.30-make-sed.sh
/book/chapter-5/5.31-make-tar.sh
/book/chapter-5/5.32-make-texinfo.sh
/book/chapter-5/5.33-make-util-linux.sh
/book/chapter-5/5.34-make-xz.sh
/book/chapter-5/5.35-strip.sh
