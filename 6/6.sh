#!/bin/bash

export LFS=/mnt/lfs

pushd $LFS/sources/12.3
        rm -f file-5.46 
        tar xf file-5.46.tar.gz
        cd file-5.46
	mkdir build
pushd build
  ../configure --disable-bzlib      \
               --disable-libseccomp \
               --disable-xzlib      \
               --disable-zlib
  make
popd
./configure --prefix=/usr --host=$LFS_TGT --build=$(./config.guess)
make FILE_COMPILE=$(pwd)/build/src/file
make DESTDIR=$LFS install
rm -v $LFS/usr/lib/libmagic.la
popd

