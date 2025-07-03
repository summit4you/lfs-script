#!/bin/bash


pushd /sources/12.3
        rm -rf flex-2.6.4
        tar xf flex-2.6.4.tar.gz
        cd flex-2.6.4
	./configure --prefix=/usr \
            --docdir=/usr/share/doc/flex-2.6.4 \
            --disable-static
	make
	make check
	make  install
	ln -sv flex   /usr/bin/lex
ln -sv flex.1 /usr/share/man/man1/lex.1
popd

