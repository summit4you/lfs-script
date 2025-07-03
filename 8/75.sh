#!/bin/bash


pushd /sources/12.3
        rm -rf dbus-1.16.0
        tar xf dbus-1.16.0.tar.xz
	cd dbus-1.16.0
	mkdir build
cd    build

meson setup --prefix=/usr --buildtype=release --wrap-mode=nofallback ..
ninja
ninja test
ninja install
ln -sfv /etc/machine-id /var/lib/dbus
popd

