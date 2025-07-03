#!/bin/bash

export LFS=/mnt/lfs

pushd $LFS/sources/12.3
        rm -f findutils-4.10.0
        tar xf findutils-4.10.0.tar.xz
        cd findutils-4.10.0
	./configure --prefix=/usr                   \
            --localstatedir=/var/lib/locate \
            --host=$LFS_TGT                 \
            --build=$(build-aux/config.guess)
	make
	make DESTDIR=$LFS install
popd

