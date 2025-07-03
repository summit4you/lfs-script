#!/bin/bash

export LFS=/mnt/lfs

pushd $LFS/sources/12.3
        rm -f gawk-5.3.1
        tar xf gawk-5.3.1.tar.xz
        cd gawk-5.3.1
	sed -i 's/extras//' Makefile.in
	./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)
	make
	make DESTDIR=$LFS install
popd

