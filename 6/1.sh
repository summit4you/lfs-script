#!/bin/bash

export LFS=/mnt/lfs

pushd $LFS/sources/12.3
	rm -f m4-1.4.19
	tar xf m4-1.4.19.tar.xz
	cd m4-1.4.19
	./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)
make
make DESTDIR=$LFS install
popd
