#!/bin/bash


pushd /sources/12.3
        rm -rf inetutils-2.6
        tar xf inetutils-2.6.tar.xz
        cd inetutils-2.6
	sed -i 's/def HAVE_TERMCAP_TGETENT/ 1/' telnet/telnet.c
	./configure --prefix=/usr        \
            --bindir=/usr/bin    \
            --localstatedir=/var \
            --disable-logger     \
            --disable-whois      \
            --disable-rcp        \
            --disable-rexec      \
            --disable-rlogin     \
            --disable-rsh        \
            --disable-servers
	make
	make check
	make  install
	mv -v /usr/{,s}bin/ifconfig
popd

