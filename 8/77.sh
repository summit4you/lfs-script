#!/bin/bash


pushd /sources/12.3
        rm -rf procps-ng-4.0.5
        tar xf procps-ng-4.0.5.tar.xz
        cd procps-ng-4.0.5
	./configure --prefix=/usr                           \
            --docdir=/usr/share/doc/procps-ng-4.0.5 \
            --disable-static                        \
            --disable-kill                          \
            --enable-watch8bit                      \
            --with-systemd
	make
	chown -R tester .
su tester -c "PATH=$PATH make check"
	make  install
popd

