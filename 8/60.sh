#!/bin/bash


pushd /sources/12.3
        rm -rf findutils-4.10.0
        tar xf findutils-4.10.0.tar.xz
        cd findutils-4.10.0
	./configure --prefix=/usr --localstatedir=/var/lib/locate
	make
	chown -R tester .
su tester -c "PATH=$PATH make check"
	make  install
popd

