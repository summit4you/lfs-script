#!/bin/bash


pushd /sources/12.3
        rm -rf kmod-34
        tar xf kmod-34.tar.xz
        cd kmod-34
	mkdir -p build
cd       build

meson setup --prefix=/usr ..    \
            --sbindir=/usr/sbin \
            --buildtype=release \
            -D manpages=false
	ninja
	ninja install
popd

