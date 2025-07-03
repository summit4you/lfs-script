#!/bin/bash

export LFS=/mnt/lfs

pushd $LFS/sources/12.3
	rm -rf binutils-2.44
	tar -xf binutils-2.44.tar.xz
	cd binutils-2.44
	sed '6031s/$add_dir//' -i ltmain.sh
	mkdir -v build
	cd       build
	../configure                   \
    --prefix=/usr              \
    --build=$(../config.guess) \
    --host=$LFS_TGT            \
    --disable-nls              \
    --enable-shared            \
    --enable-gprofng=no        \
    --disable-werror           \
    --enable-64-bit-bfd        \
    --enable-new-dtags         \
    --enable-default-hash-style=gnu
	make
	make DESTDIR=$LFS install
	rm -v $LFS/usr/lib/lib{bfd,ctf,ctf-nobfd,opcodes,sframe}.{a,la}
popd
