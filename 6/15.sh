#!/bin/bash

export LFS=/mnt/lfs

pushd $LFS/sources/12.3
        rm -f xz-5.6.4
        tar xf xz-5.6.4.tar.xz
        cd xz-5.6.4
	./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess) \
            --disable-static                  \
            --docdir=/usr/share/doc/xz-5.6.4
	make
	make DESTDIR=$LFS install
	rm -v $LFS/usr/lib/liblzma.la
popd

