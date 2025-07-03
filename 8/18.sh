#!/bin/bash


pushd /sources/12.3
        rm -rf binutils-2.44
        tar xf binutils-2.44.tar.xz
        cd binutils-2.44
	mkdir -v build
cd       build
../configure --prefix=/usr       \
             --sysconfdir=/etc   \
             --enable-ld=default \
             --enable-plugins    \
             --enable-shared     \
             --disable-werror    \
             --enable-64-bit-bfd \
             --enable-new-dtags  \
             --with-system-zlib  \
             --enable-default-hash-style=gnu
	make tooldir=/usr
	make -k check
	grep '^FAIL:' $(find -name '*.log')
	make tooldir=/usr install
	rm -rfv /usr/lib/lib{bfd,ctf,ctf-nobfd,gprofng,opcodes,sframe}.a \
        /usr/share/doc/gprofng/
popd

