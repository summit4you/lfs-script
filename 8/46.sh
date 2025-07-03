#!/bin/bash


pushd /sources/12.3
        rm -rf openssl-3.4.1
        tar xf openssl-3.4.1.tar.gz
        cd openssl-3.4.1
	./config --prefix=/usr         \
         --openssldir=/etc/ssl \
         --libdir=lib          \
         shared                \
         zlib-dynamic
	make
	HARNESS_JOBS=$(nproc) make test
	sed -i '/INSTALL_LIBS/s/libcrypto.a libssl.a//' Makefile
make MANSUFFIX=ssl install
mv -v /usr/share/doc/openssl /usr/share/doc/openssl-3.4.1
cp -vfr doc/* /usr/share/doc/openssl-3.4.1
popd

