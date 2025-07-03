#!/bin/bash

export LFS=/mnt/lfs

pushd $LFS/sources/12.3
        rm -f make-4.4.1
        tar xf make-4.4.1.tar.gz
        cd make-4.4.1
	./configure --prefix=/usr   \
            --without-guile \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)
	make
	make DESTDIR=$LFS install
popd

