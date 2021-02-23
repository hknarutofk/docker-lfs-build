#!/bin/bash
set -x -e
echo "2>&1 | tee  Continue with chroot environment..."

export MAKEFLAGS="-j6"
mkdir -p /tmp/log
sh -x /book/chapter-6/6.5-create-directories.sh 2>&1 | tee  /tmp/log/6.5-create-directories.sh.log
sh -x /book/chapter-6/6.6-create-essentials.sh 2>&1 | tee  /tmp/log/6.6-create-essentials.sh.log
sh -x /book/chapter-6/6.7-make-linux-api-headers.sh 2>&1 | tee  /tmp/log/6.7-make-linux-api-headers.sh.log
sh -x /book/chapter-6/6.8-make-man-pages.sh 2>&1 | tee  /tmp/log/6.8-make-man-pages.sh.log
sh -x /book/chapter-6/6.9-make-glibc.sh 2>&1 | tee  /tmp/log/6.9-make-glibc.sh.log
sh -x /book/chapter-6/6.10-adjust-toolchain.sh 2>&1 | tee  /tmp/log/6.10-adjust-toolchain.sh.log
sh -x /book/chapter-6/6.11-make-zlib.sh 2>&1 | tee  /tmp/log/6.11-make-zlib.sh.log
sh -x /book/chapter-6/6.12-make-file.sh 2>&1 | tee  /tmp/log/6.12-make-file.sh.log
sh -x /book/chapter-6/6.13-make-readline.sh 2>&1 | tee  /tmp/log/6.13-make-readline.sh.log
sh -x /book/chapter-6/6.14-make-m4.sh 2>&1 | tee  /tmp/log/6.14-make-m4.sh.log
sh -x /book/chapter-6/6.15-make-bc.sh 2>&1 | tee  /tmp/log/6.15-make-bc.sh.log
sh -x /book/chapter-6/6.16-make-binutils.sh 2>&1 | tee  /tmp/log/6.16-make-binutils.sh.log
sh -x /book/chapter-6/6.17-make-gmp.sh 2>&1 | tee  /tmp/log/6.17-make-gmp.sh.log
sh -x /book/chapter-6/6.18-make-mpfr.sh 2>&1 | tee  /tmp/log/6.18-make-mpfr.sh.log
sh -x /book/chapter-6/6.19-make-mpc.sh 2>&1 | tee  /tmp/log/6.19-make-mpc.sh.log
sh -x /book/chapter-6/6.20-make-shadow.sh 2>&1 | tee  /tmp/log/6.20-make-shadow.sh.log
sh -x /book/chapter-6/6.21-make-gcc.sh 2>&1 | tee  /tmp/log/6.21-make-gcc.sh.log
sh -x /book/chapter-6/6.22-make-bzip2.sh 2>&1 | tee  /tmp/log/6.22-make-bzip2.sh.log
sh -x /book/chapter-6/6.23-make-pkg-config.sh 2>&1 | tee  /tmp/log/6.23-make-pkg-config.sh.log
sh -x /book/chapter-6/6.24-make-ncurses.sh 2>&1 | tee  /tmp/log/6.24-make-ncurses.sh.log
sh -x /book/chapter-6/6.25-make-attr.sh 2>&1 | tee  /tmp/log/6.25-make-attr.sh.log
sh -x /book/chapter-6/6.26-make-acl.sh 2>&1 | tee  /tmp/log/6.26-make-acl.sh.log
sh -x /book/chapter-6/6.27-make-libcap.sh 2>&1 | tee  /tmp/log/6.27-make-libcap.sh.log
sh -x /book/chapter-6/6.28-make-sed.sh 2>&1 | tee  /tmp/log/6.28-make-sed.sh.log
sh -x /book/chapter-6/6.29-make-psmisc.sh 2>&1 | tee  /tmp/log/6.29-make-psmisc.sh.log
sh -x /book/chapter-6/6.30-make-iana-etc.sh 2>&1 | tee  /tmp/log/6.30-make-iana-etc.sh.log
sh -x /book/chapter-6/6.31-make-bison.sh 2>&1 | tee  /tmp/log/6.31-make-bison.sh.log
sh -x /book/chapter-6/6.32-make-flex.sh 2>&1 | tee  /tmp/log/6.32-make-flex.sh.log
sh -x /book/chapter-6/6.33-make-grep.sh 2>&1 | tee  /tmp/log/6.33-make-grep.sh.log
sh -x /book/chapter-6/6.34-make-bash.sh 2>&1 | tee  /tmp/log/6.34-make-bash.sh.log
sh -x /book/chapter-6/6.35-make-libtool.sh 2>&1 | tee  /tmp/log/6.35-make-libtool.sh.log
sh -x /book/chapter-6/6.36-make-gdbm.sh 2>&1 | tee  /tmp/log/6.36-make-gdbm.sh.log
sh -x /book/chapter-6/6.37-make-gperf.sh 2>&1 | tee  /tmp/log/6.37-make-gperf.sh.log
sh -x /book/chapter-6/6.38-make-expat.sh 2>&1 | tee  /tmp/log/6.38-make-expat.sh.log
sh -x /book/chapter-6/6.39-make-inetutils.sh 2>&1 | tee  /tmp/log/6.39-make-inetutils.sh.log
sh -x /book/chapter-6/6.40-make-perl.sh 2>&1 | tee  /tmp/log/6.40-make-perl.sh.log
sh -x /book/chapter-6/6.41-make-xml-parser.sh 2>&1 | tee  /tmp/log/6.41-make-xml-parser.sh.log
sh -x /book/chapter-6/6.42-make-intltool.sh 2>&1 | tee  /tmp/log/6.42-make-intltool.sh.log
sh -x /book/chapter-6/6.43-make-autoconf.sh 2>&1 | tee  /tmp/log/6.43-make-autoconf.sh.log
sh -x /book/chapter-6/6.44-make-automake.sh 2>&1 | tee  /tmp/log/6.44-make-automake.sh.log
sh -x /book/chapter-6/6.45-make-xz.sh 2>&1 | tee  /tmp/log/6.45-make-xz.sh.log
sh -x /book/chapter-6/6.46-make-kmod.sh 2>&1 | tee  /tmp/log/6.46-make-kmod.sh.log
sh -x /book/chapter-6/6.47-make-gettext.sh 2>&1 | tee  /tmp/log/6.47-make-gettext.sh.log
sh -x /book/chapter-6/6.48-make-libelf.sh 2>&1 | tee  /tmp/log/6.48-make-libelf.sh.log
sh -x /book/chapter-6/6.49-make-libffi.sh 2>&1 | tee  /tmp/log/6.49-make-libffi.sh.log
sh -x /book/chapter-6/6.50-make-openssl.sh 2>&1 | tee  /tmp/log/6.50-make-openssl.sh.log
sh -x /book/chapter-6/6.51-make-python.sh 2>&1 | tee  /tmp/log/6.51-make-python.sh.log
sh -x /book/chapter-6/6.52-make-ninja.sh 2>&1 | tee  /tmp/log/6.52-make-ninja.sh.log
sh -x /book/chapter-6/6.53-make-meson.sh 2>&1 | tee  /tmp/log/6.53-make-meson.sh.log
sh -x /book/chapter-6/6.54-make-procps-ng.sh 2>&1 | tee  /tmp/log/6.54-make-procps-ng.sh.log
sh -x /book/chapter-6/6.55-make-e2fsprogs.sh 2>&1 | tee  /tmp/log/6.55-make-e2fsprogs.sh.log
sh -x /book/chapter-6/6.56-make-coreutils.sh 2>&1 | tee  /tmp/log/6.56-make-coreutils.sh.log
sh -x /book/chapter-6/6.57-make-check.sh 2>&1 | tee  /tmp/log/6.57-make-check.sh.log
sh -x /book/chapter-6/6.58-make-diffutils.sh 2>&1 | tee  /tmp/log/6.58-make-diffutils.sh.log
sh -x /book/chapter-6/6.59-make-gawk.sh 2>&1 | tee  /tmp/log/6.59-make-gawk.sh.log
sh -x /book/chapter-6/6.60-make-findutils.sh 2>&1 | tee  /tmp/log/6.60-make-findutils.sh.log
sh -x /book/chapter-6/6.61-make-groff.sh 2>&1 | tee  /tmp/log/6.61-make-groff.sh.log
sh -x /book/chapter-6/6.62-make-grub.sh 2>&1 | tee  /tmp/log/6.62-make-grub.sh.log
sh -x /book/chapter-6/6.63-make-less.sh 2>&1 | tee  /tmp/log/6.63-make-less.sh.log
sh -x /book/chapter-6/6.64-make-gzip.sh 2>&1 | tee  /tmp/log/6.64-make-gzip.sh.log
sh -x /book/chapter-6/6.65-make-iproute2.sh 2>&1 | tee  /tmp/log/6.65-make-iproute2.sh.log
sh -x /book/chapter-6/6.66-make-kbd.sh 2>&1 | tee  /tmp/log/6.66-make-kbd.sh.log
sh -x /book/chapter-6/6.67-make-libpipeline.sh 2>&1 | tee  /tmp/log/6.67-make-libpipeline.sh.log
sh -x /book/chapter-6/6.68-make-make.sh 2>&1 | tee  /tmp/log/6.68-make-make.sh.log
sh -x /book/chapter-6/6.69-make-patch.sh 2>&1 | tee  /tmp/log/6.69-make-patch.sh.log
sh -x /book/chapter-6/6.70-make-sysklogd.sh 2>&1 | tee  /tmp/log/6.70-make-sysklogd.sh.log
sh -x /book/chapter-6/6.71-make-sysvinit.sh 2>&1 | tee  /tmp/log/6.71-make-sysvinit.sh.log
sh -x /book/chapter-6/6.72-make-eudev.sh 2>&1 | tee  /tmp/log/6.72-make-eudev.sh.log
sh -x /book/chapter-6/6.73-make-util-linux.sh 2>&1 | tee  /tmp/log/6.73-make-util-linux.sh.log
sh -x /book/chapter-6/6.74-make-man-db.sh 2>&1 | tee  /tmp/log/6.74-make-man-db.sh.log
sh -x /book/chapter-6/6.75-make-tar.sh 2>&1 | tee  /tmp/log/6.75-make-tar.sh.log
sh -x /book/chapter-6/6.76-make-texinfo.sh 2>&1 | tee  /tmp/log/6.76-make-texinfo.sh.log
sh -x /book/chapter-6/6.77-make-vim.sh 2>&1 | tee  /tmp/log/6.77-make-vim.sh.log
sh -x /book/chapter-6/6.79-strip.sh 2>&1 | tee  /tmp/log/6.79-strip.sh.log
sh -x /book/chapter-6/6.80-clean.sh 2>&1 | tee  /tmp/log/6.80-clean.sh.log

exit
