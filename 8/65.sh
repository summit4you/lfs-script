#!/bin/bash


pushd /sources/12.3
        rm -rf kbd-2.7.1
        tar xf kbd-2.7.1.tar.xz
        cd kbd-2.7.1
	patch -Np1 -i ../kbd-2.7.1-backspace-1.patch
	sed -i '/RESIZECONS_PROGS=/s/yes/no/' configure
sed -i 's/resizecons.8 //' docs/man/man8/Makefile.in
./configure --prefix=/usr --disable-vlock
	make
	make check
	make  install
	cp -R -v docs/doc -T /usr/share/doc/kbd-2.7.1
popd

