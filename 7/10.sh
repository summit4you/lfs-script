#!/bin/bash


pushd /sources/12.3
	mkdir -pv /var/lib/hwclock
	rm -f util-linux-2.40.4
	tar xf util-linux-2.40.4.tar.xz
	cd util-linux-2.40.4
	./configure --libdir=/usr/lib     \
            --runstatedir=/run    \
            --disable-chfn-chsh   \
            --disable-login       \
            --disable-nologin     \
            --disable-su          \
            --disable-setpriv     \
            --disable-runuser     \
            --disable-pylibmount  \
            --disable-static      \
            --disable-liblastlog2 \
            --without-python      \
            ADJTIME_PATH=/var/lib/hwclock/adjtime \
            --docdir=/usr/share/doc/util-linux-2.40.4
	make
	make install
popd
