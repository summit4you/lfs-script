#!/bin/bash


pushd /sources/12.3
        rm -rf iproute2-6.13.0
        tar xf iproute2-6.13.0.tar.xz
        cd iproute2-6.13.0
	sed -i /ARPD/d Makefile
rm -fv man/man8/arpd.8
make NETNS_RUN_DIR=/run/netns
make SBINDIR=/usr/sbin install
install -vDm644 COPYING README* -t /usr/share/doc/iproute2-6.13.0
popd

